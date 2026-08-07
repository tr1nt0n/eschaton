    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/8
            s1 * 1/2
            - \tweak padding 17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { II. There is only dance music in times of war. }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-0.5 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 40" } } }
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \time 2/8
            s1 * 1/4
            \time 4/4
            s1 * 1
            \time 4/8
            s1 * 1/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'14
            - \tweak padding -3
            _ \middle-fermata
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context GrandStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "altoflute staff"
                            {
                                \context Voice = "altoflute voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Flute }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Fl. }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Oboe }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Ob. }
                                    r32
                                    [
                                    ef'''32
                                    r32
                                    ef'''32
                                    r16
                                    ef'''16
                                    ]
                                    r16
                                    [
                                    ef'''16
                                    r16
                                    ef'''16
                                    ]
                                    r16.
                                    [
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    ef'''32
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    ef'''16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    ef'''16.
                                    ]
                                    r8
                                    [
                                    ef'''8
                                    ]
                                    r8
                                    [
                                    r32
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    ef'''16.
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    ef'''16
                                    r16
                                    ]
                                    r16.
                                    [
                                    ef'''32
                                    ~
                                    ef'''8
                                    ]
                                    r4
                                    r1
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context GrandStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
                            \context Staff = "baritonesaxophone staff"
                            {
                                \context Voice = "baritonesaxophone voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #-1.5 \override #'(font-name . "Bodoni72 Book") { Baritone Saxophone }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bari. Sax. }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    c'8
                                    ~
                                    c'32
                                    c'16.
                                    ~
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'8.
                                    }
                                    c'8
                                    c'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'16
                                        c'32.
                                        c'32.
                                    }
                                    r8.
                                    \times 4/5
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'16.
                                        c'8
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'64
                                        c'64
                                    }
                                    \times 2/3
                                    {
                                        c'64
                                        c'64
                                        c'16
                                    }
                                    \times 2/3
                                    {
                                        c'32
                                        c'32
                                        c'8
                                    }
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Bass Clarinet }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice5
                        {
                            \context Staff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Percussion I }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. I }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r8
                                    c'16
                                    c'16
                                    c'8
                                    c'8
                                    c'8
                                    c'8
                                    c'8.
                                    c'8.
                                    c'8
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Percussion II }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r8
                                    c'16
                                    c'16
                                    c'8
                                    c'8
                                    c'8
                                    c'8
                                    c'8.
                                    c'8.
                                    c'8
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice7
                {
                    \context Staff = "guitar staff"
                    {
                        \context Voice = "guitar voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Guitar }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Guit. }
                            r2
                            r4.
                            r4
                            r4.
                            r4
                            c'4
                            c'4
                            ~
                            c'16
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/6
                            {
                                c'8
                                c'8
                                c'8
                            }
                            c'16
                            c'16
                            r8.
                            c'16
                            ~
                            c'32
                            c'16.
                            c'32.
                            c'32.
                            c'32
                            c'32.
                            c'32.
                            c'32
                            c'32
                            c'32.
                            c'32.
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'voice8
                {
                    \context Staff = "harp staff"
                    {
                        \context Voice = "harp voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Harp }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Hp. }
                            r2
                            r4.
                            r4
                            r4.
                            r4
                            \times 2/3
                            {
                                c'8
                                c'8
                                \times 2/3
                                {
                                    c'16
                                    c'16
                                    c'16
                                }
                            }
                            \times 2/3
                            {
                                c'8
                                c'8
                                c'8
                            }
                            \times 2/3
                            {
                                c'8
                                c'8
                                c'8
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                c'32
                                c'32
                                c'32
                                c'16
                                c'16.
                            }
                            r16
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                c'16
                                c'16.
                                c'16.
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                c'16
                                c'32
                                c'32
                                c'32
                                c'16.
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                c'16.
                                c'16.
                                c'16
                            }
                            c'32.
                            c'64
                            ~
                            c'64
                            c'32.
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r8
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice9
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Piano }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group6
                {
                    \context GrandStaff = "sub group 5"
                    <<
                        \tag #'voice11
                        {
                            \context Staff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vn. }
                                    r32
                                    [
                                    ef'''32
                                    r32
                                    ef'''32
                                    r16
                                    ef'''16
                                    ]
                                    r16
                                    [
                                    ef'''16
                                    r16
                                    ef'''16
                                    ]
                                    r16.
                                    [
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    ef'''32
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    ef'''16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    ef'''16.
                                    ]
                                    r8
                                    [
                                    ef'''8
                                    ]
                                    r8
                                    [
                                    r32
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    ef'''16.
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    ef'''16
                                    r16
                                    ]
                                    r16.
                                    [
                                    ef'''32
                                    ~
                                    ef'''8
                                    ]
                                    r4
                                    c'8
                                    c'8
                                    ~
                                    c'8.
                                    c'16
                                    ~
                                    c'4
                                    c'4
                                    ~
                                    c'4
                                    c'4
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    c'8
                                    c'8
                                    ~
                                    c'8.
                                    c'16
                                    ~
                                    c'4
                                    ~
                                    c'8
                                    c'8
                                    ~
                                    c'8.
                                    c'16
                                    ~
                                    c'4
                                    c'4
                                    r4
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                                    r2
                                    r4.
                                    c'4
                                    ~
                                    c'4
                                    c'8
                                    ~
                                    c'8
                                    c'8
                                    c'8
                                    c'8
                                    ~
                                    c'8
                                    c'8
                                    ~
                                    c'4
                                    c'4
                                    r4
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice14
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    c'2
                                    c'4
                                    ~
                                    c'16
                                    c'16
                                    ~
                                    c'4
                                    c'4.
                                    c'4
                                    c'4
                                    c'4
                                    ~
                                    c'8
                                    c'8
                                    ~
                                    c'4
                                    r4
                                    r2
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
