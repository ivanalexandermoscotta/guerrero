import abjad

class AttachmentHandler:

    def __init__(
        self,
        starting_dynamic=None,
        ending_dynamic=None,
        trend=None,
        articulation=None,
        ):
        def cyc(lst):
            c = 0
            while True:
                yield lst[c%len(lst)]
                c += 1
        self.starting_dynamic = starting_dynamic
        self.ending_dynamic = ending_dynamic
        self.trend = trend
        self.articulation = articulation
        self._cyc_dynamics = cyc([starting_dynamic, ending_dynamic])

    def __call__(self, selections):
        self.add_attachments(selections)

    def add_attachments(self, selections):
        runs = abjad.select(selections).runs()
        ties = abjad.select(selections).logical_ties(pitched=True)
        for run in runs:
            if len(run) > 1:
                abjad.attach(abjad.Dynamic(self.starting_dynamic), run[0])
                abjad.attach(abjad.Dynamic(self.ending_dynamic), run[-1])
                abjad.attach(abjad.DynamicTrend(self.trend), run[0])
            else:
                dynamic = next(self._cyc_dynamics)
                abjad.attach(abjad.Dynamic(dynamic), run[0])
        for tie in ties:
            if len(tie) == 1:
                abjad.attach(abjad.Articulation(self.articulation), tie.head)