import abjad


class MusicMaker:
    def __init__(
        self,
        rmaker,
        pitches=None,
        continuous=False,
    ):
        self.rmaker = rmaker
        self.pitches = pitches
        self.continuous = continuous
        self._count = 0
        self._state = self.rmaker.state
    
    def __call__(self, durations):
        return self._make_music(durations)

    def _make_basic_rhythm(self, durations):
        selections = self.rmaker(durations, previous_state=self._state)
        self._state = self.rmaker.state
        return selections

    def _make_music(self, durations):
        selections = self._make_basic_rhythm(durations)
        if self.pitches == None:
            return selections
        selections = self._apply_pitches(selections, self.pitches)
        return selections

    def _collect_pitches_durations_leaves(self, logical_ties, pitches):
        def cyc(lst):
            if self.continuous == False:
                self._count = 0
            while True:
                yield lst[self._count % len(lst)]
                self._count += 1
        cyc_pitches = cyc(pitches)
        pitches = []
        durations = []
        leaves = []
        for tie in logical_ties:
            pitch = next(cyc_pitches)
            for leaf in tie:
                pitches.append(pitch)
                durations.append(leaf.written_duration)
                leaves.append(leaf)
        return pitches, durations, leaves

    def _apply_pitches(self, selections, pitches):
        leaf_maker = abjad.LeafMaker()
        container = abjad.Container(selections)
        old_ties = [tie for tie in abjad.iterate(
            container).logical_ties(pitched=True)]
        pitches, durations, old_leaves = self._collect_pitches_durations_leaves(
            old_ties, pitches)
        new_leaves = [leaf for leaf in leaf_maker(pitches, durations)]
        for old_leaf, new_leaf in zip(old_leaves, new_leaves):
            parent = abjad.inspect(old_leaf).parentage().parent
            parent[parent.index(old_leaf)] = new_leaf
        return [container[:]]
