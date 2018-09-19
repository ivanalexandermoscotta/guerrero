import abjad 
from abjadext import rmakers 


class RhythmMusicMaker:
    def __init__(
        self,
        rmaker, 
        pitches,
        ):
        self.rmaker = rmaker 
        self.pitches = pitches 
        self.state = rmaker.previous_state
    
    def __call__(self, durations, previous_state):
        state=previous_state
        return self.make_basic_rhythm(self.rmaker, durations)
    
    def make_basic_rhythm(self, rmaker, divisions):
        selections = rmaker(divisions, previous_state=self.state)
        self.state = rmaker.state 
        music = self._apply_pitches(selections)
        return music 

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

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


