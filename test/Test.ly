\version "2.19.82"  %! LilyPondFile
\language "english" %! LilyPondFile

\include "first_stylesheet.ily" %! LilyPondFile

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\layout {}

\paper {}

\score { %! LilyPondFile
    \new Score
    <<
        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1] %! COMMENT_MEASURE_NUMBERS
            \time 5/4
            s1 * 5/4
            % [Global Context measure 2] %! COMMENT_MEASURE_NUMBERS
            \time 4/4
            s1 * 1
            % [Global Context measure 3] %! COMMENT_MEASURE_NUMBERS
            \time 3/4
            s1 * 3/4
            % [Global Context measure 4] %! COMMENT_MEASURE_NUMBERS
            \time 5/4
            s1 * 5/4
            % [Global Context measure 5] %! COMMENT_MEASURE_NUMBERS
            \time 4/4
            s1 * 1
            % [Global Context measure 6] %! COMMENT_MEASURE_NUMBERS
            \time 3/4
            s1 * 3/4
            % [Global Context measure 7] %! COMMENT_MEASURE_NUMBERS
            \time 3/4
            s1 * 3/4
            % [Global Context measure 8] %! COMMENT_MEASURE_NUMBERS
            \time 4/4
            s1 * 1
            % [Global Context measure 9] %! COMMENT_MEASURE_NUMBERS
            \time 5/4
            s1 * 5/4
            % [Global Context measure 10] %! COMMENT_MEASURE_NUMBERS
            \time 3/4
            s1 * 3/4
            % [Global Context measure 11] %! COMMENT_MEASURE_NUMBERS
            \time 4/4
            s1 * 1
            % [Global Context measure 12] %! COMMENT_MEASURE_NUMBERS
            \time 5/4
            s1 * 5/4
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "Staff 1"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 1"
                {
                    {
                        % [Voice 1 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { spro. }
                        \set Staff.instrumentName =
                        \markup { Sopranino }
                        \tempo 4=90
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        ~
                        ]
                        a4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a8.
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 1 measure 2] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            a4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a16
                            ~
                            ]
                            a4
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 1 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 1 measure 4] %! COMMENT_MEASURE_NUMBERS
                            r2
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a8
                            [
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 1 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r8.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        ~
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a8.
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        a16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 1 measure 6] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 1 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 1 measure 8] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        r4.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a8
                        ]
                    }
                    {
                        % [Voice 1 measure 9] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            r4.
                            \stopStaff \startStaff
                            a4
                        }
                    }
                    {
                        % [Voice 1 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2.
                    }
                    {
                        % [Voice 1 measure 11] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r8.
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a8.
                            ]
                        }
                    }
                    {
                        % [Voice 1 measure 12] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                        a4
                        a4
                    }
                }
            }
            \context Staff = "Staff 2"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 2"
                {
                    {
                        % [Voice 2 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { spr.1 }
                        \set Staff.instrumentName =
                        \markup { "Soprano 1" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 2 measure 2] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d'8
                        [
                        ]
                        d'4.
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 2 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        ]
                        d'4
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d'8.
                        ]
                    }
                    {
                        % [Voice 2 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 2 measure 5] %! COMMENT_MEASURE_NUMBERS
                        d'4
                        d'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 2 measure 6] %! COMMENT_MEASURE_NUMBERS
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d'16
                            ~
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            ]
                            d'4
                            ~
                        }
                    }
                    {
                        % [Voice 2 measure 7] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d'16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8.
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d'16
                        ]
                    }
                    {
                        % [Voice 2 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d'8
                            ~
                            [
                            ]
                        }
                    }
                    {
                        % [Voice 2 measure 9] %! COMMENT_MEASURE_NUMBERS
                        d'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 2 measure 10] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8
                            ~
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d'8
                            ]
                        }
                    }
                    {
                        % [Voice 2 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            r8
                            \stopStaff \startStaff
                            d'4
                        }
                    }
                    {
                        % [Voice 2 measure 12] %! COMMENT_MEASURE_NUMBERS
                        d'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 3"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 3"
                {
                    {
                        % [Voice 3 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { spr.2 }
                        \set Staff.instrumentName =
                        \markup { "Soprano 2" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8.
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d'8
                        ]
                    }
                    {
                        % [Voice 3 measure 2] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 3 measure 3] %! COMMENT_MEASURE_NUMBERS
                            r4
                            \stopStaff \startStaff
                            d'4.
                        }
                    }
                    {
                        % [Voice 3 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        ]
                        d'4.
                    }
                    {
                        % [Voice 3 measure 5] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 3 measure 6] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8
                            [
                            ]
                            d'4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d'16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d'8.
                            ]
                        }
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 3 measure 7] %! COMMENT_MEASURE_NUMBERS
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r8
                            \stopStaff \startStaff
                            d'4
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8
                            [
                            ]
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r8
                        }
                    }
                    {
                        % [Voice 3 measure 8] %! COMMENT_MEASURE_NUMBERS
                        r1
                    }
                    {
                        % [Voice 3 measure 9] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'16
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d'16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 3 measure 10] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            ~
                            ]
                            d'4
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d'16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            d'16
                            ]
                        }
                    }
                    {
                        % [Voice 3 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 3 measure 12] %! COMMENT_MEASURE_NUMBERS
                        r4
                        \stopStaff \startStaff
                        d'2
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 4"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 4"
                {
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 4 measure 1] %! COMMENT_MEASURE_NUMBERS
                            \set Staff.shortInstrumentName =
                            \markup { alt.1 }
                            \set Staff.instrumentName =
                            \markup { "Alto 1" }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r2
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a'8
                            [
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 2] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        a'4.
                        ~
                    }
                    {
                        % [Voice 4 measure 3] %! COMMENT_MEASURE_NUMBERS
                        a'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 4] %! COMMENT_MEASURE_NUMBERS
                        r8.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a'16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r2
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 4 measure 6] %! COMMENT_MEASURE_NUMBERS
                        a'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \times 4/5 {
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            ~
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a'16
                            ~
                        }
                    }
                    {
                        % [Voice 4 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8.
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 9] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r8.
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a'16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a'16
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8.
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            a'16
                            ]
                        }
                    }
                    {
                        % [Voice 4 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8
                        ~
                        [
                        ]
                    }
                    {
                        % [Voice 4 measure 11] %! COMMENT_MEASURE_NUMBERS
                        a'2
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 4 measure 12] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8
                        ]
                    }
                }
            }
            \context Staff = "Staff 5"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 5"
                {
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 5 measure 1] %! COMMENT_MEASURE_NUMBERS
                            \set Staff.shortInstrumentName =
                            \markup { alt.2 }
                            \set Staff.instrumentName =
                            \markup { "Alto 2" }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            ]
                            a'4
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            a'16
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 5 measure 2] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        [
                        ]
                        a'4
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a'16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 5 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 5 measure 4] %! COMMENT_MEASURE_NUMBERS
                        r2
                        \stopStaff \startStaff
                        a'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 5 measure 5] %! COMMENT_MEASURE_NUMBERS
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8
                            ]
                            a'4
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 5 measure 6] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 5 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 5 measure 8] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            r2
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a'8
                            [
                            ]
                        }
                    }
                    {
                        % [Voice 5 measure 9] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8
                        ]
                    }
                    {
                        % [Voice 5 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2.
                    }
                    {
                        % [Voice 5 measure 11] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        ~
                        ]
                        a'4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8.
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a'16
                        ]
                    }
                    {
                        % [Voice 5 measure 12] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            r4.
                            \stopStaff \startStaff
                            a'4
                        }
                    }
                }
            }
            \context Staff = "Staff 6"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 6"
                {
                    {
                        % [Voice 6 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { alt.3 }
                        \set Staff.instrumentName =
                        \markup { "Alto 3" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            % [Voice 6 measure 2] %! COMMENT_MEASURE_NUMBERS
                            a'4
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a'8
                            [
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 6 measure 3] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            a'4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a'16
                            ~
                            ]
                            a'4
                        }
                    }
                    {
                        % [Voice 6 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            % [Voice 6 measure 5] %! COMMENT_MEASURE_NUMBERS
                            \set stemLeftBeamCount = 0
                            \set stemRightBeamCount = 1
                            a'8
                            [
                            ]
                            a'4
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 6 measure 6] %! COMMENT_MEASURE_NUMBERS
                        r8.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        ~
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8.
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 6 measure 7] %! COMMENT_MEASURE_NUMBERS
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8.
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a'8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a'16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a'16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a'8.
                            ]
                        }
                    }
                    {
                        % [Voice 6 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                        a'4
                    }
                    {
                        % [Voice 6 measure 9] %! COMMENT_MEASURE_NUMBERS
                        a'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 6 measure 10] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a'16
                        ]
                        a'4
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a'16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8.
                        ]
                    }
                    {
                        % [Voice 6 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a'8
                        ~
                        [
                        ]
                    }
                    {
                        % [Voice 6 measure 12] %! COMMENT_MEASURE_NUMBERS
                        a'4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 7"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 7"
                {
                    {
                        % [Voice 7 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { ten.1 }
                        \set Staff.instrumentName =
                        \markup { "Tenor 1" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d''16
                            ~
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            ]
                            d''4
                        }
                    }
                    {
                        % [Voice 7 measure 2] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 7 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r4
                        \stopStaff \startStaff
                        d''4
                        d''4
                    }
                    {
                        % [Voice 7 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            r4
                            \stopStaff \startStaff
                            d''4.
                        }
                    }
                    {
                        % [Voice 7 measure 5] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 7 measure 6] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8.
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''16
                        ]
                    }
                    {
                        % [Voice 7 measure 7] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ]
                        d''4.
                    }
                    {
                        % [Voice 7 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 7 measure 9] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8
                            ~
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d''8
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 7 measure 10] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8.
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        ]
                    }
                    {
                        % [Voice 7 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 7 measure 12] %! COMMENT_MEASURE_NUMBERS
                            r8
                            \stopStaff \startStaff
                            d''4
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8
                            [
                            ]
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r8
                        }
                    }
                    {
                        r2
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 8"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 8"
                {
                    {
                        % [Voice 8 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { ten.2 }
                        \set Staff.instrumentName =
                        \markup { "Tenor 2" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                        \stopStaff \startStaff
                        d''2
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 8 measure 2] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r2
                    }
                    {
                        % [Voice 8 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        [
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 8 measure 4] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8
                            [
                            ]
                            d''4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d''16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d''8.
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 8 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            r8
                            \stopStaff \startStaff
                            d''4
                            ~
                        }
                    }
                    {
                        % [Voice 8 measure 6] %! COMMENT_MEASURE_NUMBERS
                        d''4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 8 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        [
                    }
                    {
                        \times 8/9 {
                            % [Voice 8 measure 8] %! COMMENT_MEASURE_NUMBERS
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8
                            ]
                            d''4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            d''16
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 8 measure 9] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8.
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''16
                        ]
                    }
                    {
                        % [Voice 8 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 8 measure 11] %! COMMENT_MEASURE_NUMBERS
                        d''4
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        [
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 8 measure 12] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r8.
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            ~
                            ]
                            d''4
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d''8
                            [
                            ]
                        }
                    }
                }
            }
            \context Staff = "Staff 9"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 9"
                {
                    {
                        % [Voice 9 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { ten.3 }
                        \set Staff.instrumentName =
                        \markup { "Tenor 3" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        ~
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''16
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8.
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 9 measure 2] %! COMMENT_MEASURE_NUMBERS
                            r8.
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            d''16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d''16
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d''8.
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            d''16
                            ]
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 9 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 9 measure 4] %! COMMENT_MEASURE_NUMBERS
                            r8
                            \stopStaff \startStaff
                            d''2
                        }
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 9 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''16
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        % [Voice 9 measure 6] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 9 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2.
                    }
                    {
                        % [Voice 9 measure 8] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        r2
                        \stopStaff \startStaff
                        d''4
                    }
                    {
                        % [Voice 9 measure 9] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            r2
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d''8
                            [
                            ]
                        }
                    }
                    {
                        % [Voice 9 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2.
                    }
                    {
                        % [Voice 9 measure 11] %! COMMENT_MEASURE_NUMBERS
                        r4
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            ]
                            d''4
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 0
                            d''16
                            ]
                        }
                    }
                    {
                        % [Voice 9 measure 12] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''8
                        ]
                    }
                }
            }
            \context Staff = "Staff 10"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 10"
                {
                    {
                        % [Voice 10 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { bar.1 }
                        \set Staff.instrumentName =
                        \markup { "Baritone 1" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 10 measure 2] %! COMMENT_MEASURE_NUMBERS
                        a''4
                        a''4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 10 measure 3] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8
                        [
                        ]
                        a''4
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a''16
                        ]
                    }
                    {
                        % [Voice 10 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        r4
                    }
                    {
                        % [Voice 10 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        a''4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a''8
                        [
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 10 measure 6] %! COMMENT_MEASURE_NUMBERS
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a''8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a''8
                            ]
                            a''4
                        }
                    }
                    {
                        % [Voice 10 measure 7] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        a''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        ~
                        ]
                        a''4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8.
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a''16
                        ]
                    }
                    {
                        % [Voice 10 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r2
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 10 measure 9] %! COMMENT_MEASURE_NUMBERS
                        a''4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 10 measure 10] %! COMMENT_MEASURE_NUMBERS
                            r16
                            \stopStaff \startStaff
                            a''4
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            ~
                            ]
                            a''4
                        }
                    }
                    {
                        % [Voice 10 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 4/3 {
                            r4
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a''8
                            ~
                            [
                        }
                    }
                    {
                        % [Voice 10 measure 12] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a''8
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 11"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 11"
                {
                    {
                        % [Voice 11 measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set Staff.shortInstrumentName =
                        \markup { bar.2 }
                        \set Staff.instrumentName =
                        \markup { "Baritone 2" }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r8.
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        ~
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8.
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a''16
                        ]
                    }
                    {
                        % [Voice 11 measure 2] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 11 measure 3] %! COMMENT_MEASURE_NUMBERS
                            r4.
                            \stopStaff \startStaff
                            a''4
                        }
                    }
                    {
                        % [Voice 11 measure 4] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                        a''4
                        a''4
                    }
                    {
                        % [Voice 11 measure 5] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 11 measure 6] %! COMMENT_MEASURE_NUMBERS
                            r8.
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a''8.
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a''16
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a''16
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            a''8.
                            ]
                        }
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 11 measure 7] %! COMMENT_MEASURE_NUMBERS
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r4
                            \stopStaff \startStaff
                            a''4.
                        }
                    }
                    {
                        % [Voice 11 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 11 measure 9] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        ]
                        a''4
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        a''16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        a''8.
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            % [Voice 11 measure 10] %! COMMENT_MEASURE_NUMBERS
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a''16
                            ~
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a''8.
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            a''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            a''16
                            ]
                            a''4
                        }
                    }
                    {
                        % [Voice 11 measure 11] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1
                    }
                    {
                        % [Voice 11 measure 12] %! COMMENT_MEASURE_NUMBERS
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a''8
                        ]
                        a''4.
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                        \stopStaff \startStaff
                    }
                }
            }
            \context Staff = "Staff 12"
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \context Voice = "Voice 12"
                {
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5 {
                            % [Voice 12 measure 1] %! COMMENT_MEASURE_NUMBERS
                            \set Staff.shortInstrumentName =
                            \markup { bs. }
                            \set Staff.instrumentName =
                            \markup { Bass }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r8
                            \stopStaff \startStaff
                            d'''4
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            d'''8
                            [
                            ]
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r8
                        }
                    }
                    {
                        r2
                    }
                    {
                        % [Voice 12 measure 2] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                        d'''4
                        ~
                    }
                    {
                        % [Voice 12 measure 3] %! COMMENT_MEASURE_NUMBERS
                        d'''4
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 12 measure 4] %! COMMENT_MEASURE_NUMBERS
                        r16
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8.
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d'''16
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 12 measure 5] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        d'''4.
                    }
                    {
                        % [Voice 12 measure 6] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r4
                    }
                    {
                        r2
                    }
                    {
                        % [Voice 12 measure 7] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \times 4/5 {
                            r16
                            \stopStaff \startStaff
                            d'''4
                            ~
                        }
                    }
                    {
                        % [Voice 12 measure 8] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d'''16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8.
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d'''8
                        ]
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 12 measure 9] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            r8
                            \stopStaff \startStaff
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'''16
                            [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'''16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            d'''16
                            ]
                            d'''4
                            ~
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            d'''16
                            [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 0
                            d'''8.
                            ]
                        }
                    }
                    {
                        % [Voice 12 measure 10] %! COMMENT_MEASURE_NUMBERS
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        r4
                        \stopStaff \startStaff
                    }
                    {
                        % [Voice 12 measure 11] %! COMMENT_MEASURE_NUMBERS
                        d'''2
                    }
                    {
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r2
                    }
                    {
                        % [Voice 12 measure 12] %! COMMENT_MEASURE_NUMBERS
                        r2
                    }
                    {
                        r8
                        \stopStaff \startStaff
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        ~
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d'''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d'''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d'''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d'''8.
                        ]
                    }
                }
            }
        >>
    >>
} %! LilyPondFile