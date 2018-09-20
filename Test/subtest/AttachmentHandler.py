import abjad

class AttachmentHandler:

    def __init__(
        self,
        starting_dynamic=None,
        ending_dynamic=None,
        trend=None,
        articulation=None,
        ):
        self.starting_dynamic = starting_dynamic
        self.ending_dynamic = ending_dynamic
        self.trend = trend
        self.articulation = articulation

    def __call__(self, selections):
        return self.add_attachments(selections)

    def add_attachments(self, selections):
        runs = abjad.select(selections).runs()
        # ties = abjad.select(selections).logical_ties()
        for run in runs:
            if len(run) > 1:
                start = abjad.Dynamic(self.starting_dynamic)
                stop = abjad.Dynamic(self.ending_dynamic)
                trend = abjad.DynamicTrend(self.trend)
                abjad.attach(start, run[0])
                abjad.attach(stop, run[-1])
                abjad.attach(trend, run[0])
        # for tie in ties:
            # abjad.attach(abjad.Articulation(self.articulation), tie[0])
        return selections