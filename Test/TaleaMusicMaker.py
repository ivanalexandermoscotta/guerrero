import abjad
from abjadext import rmakers

global talea_rhythm_maker
talea_rhythm_maker = rmakers.TaleaRhythmMaker()

class TaleaMusicMaker:

    def __init__(
        self,
        counts,
        denominator,
        pitches,
        burnish_specifier=None,
        extra_counts_per_division=[0],
        mask_indices=None,
        mask_period=None,
        beams=False,
        clef='treble',
        #tag='None',
        ):
        self.burnish_specifier=burnish_specifier
        self.counts = counts
        self.denominator = denominator
        self.extra_counts_per_division=extra_counts_per_division
        self.mask_indices=mask_indices
        self.mask_period=mask_period
        self.pitches = pitches
        self.beams = beams
        self.clef = abjad.Clef(clef)
        #self.tag=tag

    def __call__(self, durations, previous_state):
        state = previous_state
        return self.make_music(durations)

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

    def make_basic_rhythm(self, durations):
        talea = rmakers.Talea(
            counts = self.counts,
            denominator=self.denominator,
            )
        beam_specifier = rmakers.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )

        # burnish_specifier=abjadext.rmakers.BurnishSpecifier(
        #     left_classes=[abjad.Rest],
        #     left_counts=[1, 0, 1],
        #     )
        if self.mask_indices or self.mask_period == None:
            division_masks = None
        else:
            division_masks = rmakers.SilenceMask(
                pattern = abjad.Pattern(
                    indices=self.mask_indices,
                    period=self.mask_period,
                    )
                )
        tuplet_specifier = rmakers.TupletSpecifier(
            trivialize=True,
            extract_trivial=True,
            rewrite_rest_filled=True,
            )
        talea_rhythm_maker = rmakers.TaleaRhythmMaker(
            talea=talea,
            beam_specifier=beam_specifier,
            extra_counts_per_division=self.extra_counts_per_division,
            division_masks=division_masks,
            tuplet_specifier=tuplet_specifier,
            burnish_specifier=self.burnish_specifier
            #tag=self.tag,
            )

        selections = talea_rhythm_maker(durations)
        music = self._apply_pitches(selections)

        return music

    def _apply_pitches(self, selections):
        selections = selections
        leaves = [i for i in abjad.iterate(selections).logical_ties()]
        pitches = self._cyclic_pitches(self.pitches)

        for i, leaf in enumerate(leaves):
            if leaf.is_pitched ==True:
                pitch = next(pitches)
                for note in leaf:
                    note.written_pitch = pitch
        return selections

    # def add_attachments(self, music):
    #     runs = abjad.select(music).runs()
    #     for run in runs:
    #         abjad.attach(abjad.Articulation('tenuto'), run[0])
    #         if 4 < len(run):
    #             abjad.attach(abjad.Hairpin('mp > niente'), run)
    #         elif 4 > len(run) and len(run) > 1:
    #             abjad.attach(abjad.Dynamic('fff'), run[0])
    #         else:
    #             abjad.attach(abjad.Dynamic('ppp'), run[0])
    #     return music

    def make_music(self, durations):
        music = self.make_basic_rhythm(
            durations,
            )
        # music = self.add_attachments(music)

        return music

    @property
    def state(self) -> abjad.OrderedDict:
        return talea_rhythm_maker.state
