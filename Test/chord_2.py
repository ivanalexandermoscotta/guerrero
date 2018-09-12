import abjad
import itertools
import os
import pathlib
import time
import abjadext.rmakers
# from abjadext import rmakers
from RhythmMusicMaker import RhythmMusicMaker

print('Interpreting file ...')

# Define the time signatures we would like to apply against the timespan structure.

time_signatures = [
    abjad.TimeSignature(pair) for pair in [
        (4, 4),
    ]
]

bounds = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])

# Define rhythm-makers: two for actual music, one for silence.
talea_rmaker = abjadext.rmakers.TaleaRhythmMaker(
        talea=abjadext.rmakers.Talea(
            counts=[2, 2, 5, 3, 1, 1, 3, 1],
            denominator=8
        ),
        extra_counts_per_division=[1, 0, 0, 1, 0, 3, 0, 0],
    )


musicmaker_one = RhythmMusicMaker(
    rmaker=talea_rmaker,
    pitches=[0],
)

rmaker_one = abjadext.rmakers.NoteRhythmMaker()

# Define a small class so that we can annotate timespans with additional
# information:


class MusicSpecifier:

    def __init__(self, rhythm_maker, voice_name):
        self.rhythm_maker = rhythm_maker
        self.voice_name = voice_name

print('Collecting timespans and rmakers ...')

voice_1_timespan_list = abjad.TimespanList([
    abjad.AnnotatedTimespan(
        start_offset=start_offset,
        stop_offset=stop_offset,
        annotation=MusicSpecifier(
            rhythm_maker=rhythm_maker,
            voice_name='Voice 1',
        ),
    )
    for start_offset, stop_offset, rhythm_maker in [
        [0, 1, musicmaker_one],
        [2, 3, musicmaker_one],
    ]
])

voice_2_timespan_list = abjad.TimespanList([
    abjad.AnnotatedTimespan(
        start_offset=start_offset,
        stop_offset=stop_offset,
        annotation=MusicSpecifier(
            rhythm_maker=rhythm_maker,
            voice_name='Voice 2',
        ),
    )
    for start_offset, stop_offset, rhythm_maker in [
        [0, 1, rmaker_one],
        [2, 3, rmaker_one],
    ]
])

all_timespan_lists = {
    'Voice 1': voice_1_timespan_list,
    'Voice 2': voice_2_timespan_list,
}

global_timespan = abjad.Timespan(
    start_offset=0,
    stop_offset=max(_.stop_offset for _ in all_timespan_lists.values())
)

# Using the global timespan, create silence timespans for each timespan list.
# We don't need to create any silences by-hand if we now the global start and
# stop offsets of all voices combined:

for voice_name, timespan_list in all_timespan_lists.items():
    # Here is another technique for finding where the silence timespans are. We
    # create a new timespan list consisting of the global timespan and all the
    # timespans from our current per-voice timespan list. Then we compute an
    # in-place logical XOR. The XOR will replace the contents of the "silences"
    # timespan list with a set of timespans representing those periods of time
    # where only one timespan from the original was present. This has the
    # effect of cutting out holes from the global timespan wherever a per-voice
    # timespan was found, but also preserves any silence before the first
    # per-voice timespan or after the last per-voice timespan. Then we merge
    # the newly-created silences back into the per-voice timespan list.
    silences = abjad.TimespanList([global_timespan])
    silences.extend(timespan_list)
    silences.sort()
    silences.compute_logical_xor()
    # Add the silences into the voice timespan list. We create new *annotated*
    # timespans so we can maintain the voice name information:
    for silence_timespan in silences:
        timespan_list.append(
            abjad.AnnotatedTimespan(
                start_offset=silence_timespan.start_offset,
                stop_offset=silence_timespan.stop_offset,
                annotation=MusicSpecifier(
                    rhythm_maker=None,
                    voice_name=voice_name,
                ),
            )
        )
    timespan_list.sort()

# Split the timespan list via the time signatures and collect the shards into a
# new timespan list

for voice_name, timespan_list in all_timespan_lists.items():
    shards = timespan_list.split_at_offsets(bounds)
    split_timespan_list = abjad.TimespanList()
    for shard in shards:
        split_timespan_list.extend(shard)
    split_timespan_list.sort()
    # We can replace the original timespan list in the dictionary of
    # timespan lists because we know the key it was stored at (its voice
    # name):
    all_timespan_lists[voice_name] = timespan_list

score = abjad.Score([
    abjad.Staff(lilypond_type='TimeSignatureContext', name='Global Context'),
    abjad.StaffGroup(
        [abjad.Staff(
            [abjad.Voice(
                name='Voice {}'.format(n))
            ],
            name='Staff {}'.format(n),
            lilypond_type='Staff')
                for n in [1, 2]
        ],
        name='Staff Group',
    )
])

# Add skips and time signatures to the global context

for time_signature in time_signatures:
    skip = abjad.Skip(1)
    abjad.attach(abjad.Multiplier(time_signature), skip)
    abjad.attach(time_signature, skip)
    score['Global Context'].append(skip)

def make_container(rhythm_maker, durations):
    state=rhythm_maker.state
    selections = rhythm_maker(durations, previous_state=state)
    container = abjad.Container(selections)
    return container

def key_function(timespan):
    """
    Get the timespan's annotation's rhythm-maker.

    If the annotation's rhythm-maker is None, return the silence maker.
    """
    return timespan.annotation.rhythm_maker or rmaker_one

for voice_name, timespan_list in all_timespan_lists.items():
    for rhythm_maker, grouper in itertools.groupby(
        timespan_list,
        key=key_function,
    ):
        # We know the voice name of each timespan because a) the timespan
        # list is in a dictionary, associated with that voice name and b)
        # each timespan's annotation is a MusicSpecifier instance which
        # knows the name of the voice the timespan should be used for.
        # This double-reference to the voice is redundant here, but in a
        # different implementation we could put *all* the timespans into
        # one timespan list, split them, whatever, and still know which
        # voice they belong to because their annotation records that
        # information.
        durations = [timespan.duration for timespan in grouper]
        container = make_container(rhythm_maker, durations)
        voice = score[voice_name]
        voice.append(container)

print('Splitting and rewriting ...')

# # split and rewite meters
# for voice in abjad.iterate(score['Staff Group']).components(abjad.Voice):
#     for i, shard in enumerate(abjad.mutate(voice[:]).split(time_signatures)):
#         time_signature = time_signatures[0]
#         abjad.mutate(shard).rewrite_meter(time_signature)

print('Beautifying score ...')
# cutaway score
for staff in abjad.iterate(score['Staff Group']).components(abjad.Staff):
    for selection in abjad.select(staff).components(abjad.Rest).group_by_contiguity():
        start_command = abjad.LilyPondLiteral(
            r'\stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff',
            format_slot='before',
            )
        stop_command = abjad.LilyPondLiteral(
            r'\stopStaff \startStaff',
            format_slot='after',
            )
        abjad.attach(start_command, selection[0])
        abjad.attach(stop_command, selection[-1])

# Make pitches
print('Adding pitch material ...')
def cyc(lst):
    count = 0
    while True:
        yield lst[count%len(lst)]
        count += 1

sopranino_scale = [30]
soprano1_scale = [20]

scales = [
    sopranino_scale,
    soprano1_scale,
]

staffs = [staff for staff in abjad.iterate(score['Staff Group']).components(abjad.Staff)]

for staff , scale in zip(staffs , scales):
    logicl_ties = [i for i in abjad.iterate(staff).logical_ties(pitched=True)]
    pitches = cyc(scale)
    for i , logicl_tie in enumerate(logicl_ties):
        if logicl_tie.is_pitched ==True:
            pitch = next(pitches)
            for note in logicl_tie:
                note.written_pitch = pitch

#attach instruments and clefs

print('Adding attachments ...')

# instruments = cyc([
#     abjad.SopraninoSaxophone(),
#     abjad.SopranoSaxophone(),
#     )]

# abbreviations = cyc([abjad.MarginMarkup(markup=abjad.Markup(abbrev))
#     for abbrev in (
#         'spro.',
#         'spr.1',
#         )
#     ])

# names = cyc([abjad.StartMarkup(markup=abjad.Markup(name))
#     for name in (
#         'Sopranino',
#         'Soprano 1',
#         )
#     ])

# for staff in abjad.iterate(score['Staff Group']).components(abjad.Staff):
#     leaf1 = abjad.select(staff).leaves()[0]
#     abjad.attach(next(instruments), leaf1)
#     abjad.attach(next(abbreviations), leaf1)
#     abjad.attach(next(names), leaf1)
#     # abjad.attach(next(clefs), leaf1)

# for staff in abjad.iterate(score['Staff Group']).components(abjad.Staff):
#     abjad.Instrument.transpose_from_sounding_pitch(staff)

# Make a lilypond file and show it:

score_file = abjad.LilyPondFile.new(
    score,
    includes=['first_stylesheet.ily'],
    )

abjad.show(score)