    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 25 34 22 19 24 19 21 21)))
            \time 5/16
            s1 * 5/16
            - \tweak padding 17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { III. wait. }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #2 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #5.5 { "= 120" } } }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/16
            s1 * 5/16
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/16
            s1 * 5/16
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/16
            s1 * 5/16
            \break
            \time 4/8
            s1 * 1/2
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 4/8
            s1 * 1/2
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/80)
            \time 2/8
            s1 * 1/4
            \pageBreak
              %! +SCORE
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/40)
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Fl. }
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r2
                                    r4.
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        r16.
                                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bass }
                                        [
                                        \tweak style #'la
                                        af'16
                                        \pp
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        - \tweak padding #13.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Air } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2.5
                                        \startTextSpan
                                        r16.
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \tweak style #'la
                                        b'16
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        [
                                        _ (
                                        \tweak style #'la
                                        a'16.
                                        \tweak style #'la
                                        cs'16.
                                        ]
                                    }
                                    \tweak style #'la
                                    bf'32.
                                    )
                                    [
                                    r32.
                                    \tweak style #'la
                                    b'32
                                    - \tweak X-extent ##f
                                    - \tweak padding 0
                                    ^ \markup {
                                                \hspace #-0.5
                                                \override #'(font-name . "ekmelos")
                                                \fontsize #7
                                                {
                                                    {
                                                        \char ##xe610
                                                    }
                                                    \hspace #-0.77
                                                    {
                                                        \char ##xe611
                                                    }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                }
                                            }
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r32
                                        [
                                        \tweak style #'la
                                        c'32
                                        \stopTextSpan
                                        _ (
                                        b'64
                                        \mp
                                        bf'32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c''64
                                        )
                                        [
                                        r32
                                        \tweak style #'la
                                        b'32
                                        \pp
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Air } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        r32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \tweak style #'la
                                        d'32
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        [
                                        _ (
                                        \tweak style #'la
                                        a'32
                                        \tweak style #'la
                                        cs'32
                                        \tweak style #'la
                                        af'64
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        \tweak style #'la
                                        ef'32
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        r16
                                        \tweak style #'la
                                        af'32
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        cs''16
                                        \mp
                                        [
                                        ^ (
                                        bf'8
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'la
                                        ef'8
                                        \pp
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        [
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Air } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -9
                                        \startTextSpan
                                        _ (
                                        \tweak style #'la
                                        af'16
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        [
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        f''16
                                        \mp
                                        ^ (
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        ef''32
                                        g''16
                                        ]
                                    }
                                    ef''32
                                    )
                                    [
                                    \tweak style #'la
                                    f'16
                                    \pp
                                    - \tweak X-extent ##f
                                    - \tweak padding 0
                                    ^ \markup {
                                                \hspace #-0.5
                                                \override #'(font-name . "ekmelos")
                                                \fontsize #7
                                                {
                                                    {
                                                        \char ##xe610
                                                    }
                                                    \hspace #-0.77
                                                    {
                                                        \char ##xe611
                                                    }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                }
                                            }
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Air } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    _ (
                                    \tweak style #'la
                                    e'32
                                    )
                                    ]
                                    r32
                                    [
                                    \tweak style #'la
                                    fs'64
                                    - \tweak X-extent ##f
                                    - \tweak padding 0
                                    ^ \markup {
                                                \hspace #-0.5
                                                \override #'(font-name . "ekmelos")
                                                \fontsize #7
                                                {
                                                    {
                                                        \char ##xe610
                                                    }
                                                    \hspace #-0.77
                                                    {
                                                        \char ##xe611
                                                    }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                }
                                            }
                                    _ (
                                    \tweak style #'la
                                    e'64
                                    \tweak style #'la
                                    f'64
                                    \tweak style #'la
                                    ef'64
                                    ~
                                    \tweak style #'la
                                    ef'64
                                    \tweak style #'la
                                    g'64
                                    ]
                                    \times 2/3
                                    {
                                        \tweak style #'la
                                        ef'16
                                        )
                                        [
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16
                                            \tweak style #'la
                                            f'16
                                            - \tweak X-extent ##f
                                            - \tweak padding 0
                                            ^ \markup {
                                                        \hspace #-0.5
                                                        \override #'(font-name . "ekmelos")
                                                        \fontsize #7
                                                        {
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe610
                                                                }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe611
                                                                }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe610
                                                                }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe611
                                                                }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe610
                                                                }
                                                                \hspace #-0.77
                                                                {
                                                                    \char ##xe611
                                                                }
                                                        }
                                                    }
                                            _ (
                                            \tweak style #'la
                                            fs'16
                                            )
                                            \stopTextSpan
                                            ]
                                        }
                                        \revert TupletNumber.text
                                    }
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Ob. }
                                    r32
                                    [
                                    \half-air
                                    dqf'''32
                                    \pp
                                    - \tweak X-extent ##f
                                    - \tweak padding 0
                                    ^ \markup {
                                                \hspace #-0.5
                                                \override #'(font-name . "ekmelos")
                                                \fontsize #7
                                                {
                                                    {
                                                        \char ##xe610
                                                    }
                                                    \hspace #-0.77
                                                    {
                                                        \char ##xe611
                                                    }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                }
                                            }
                                    (
                                    - \tweak padding #10.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \half-air
                                    a''32
                                    )
                                    r32
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r16.
                                        [
                                        \half-air
                                        cs''16.
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        (
                                        \half-air
                                        af''32
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r32
                                        [
                                        \half-air
                                        ef'''16.
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        (
                                        \half-air
                                        gqs'''16.
                                        )
                                        ]
                                    }
                                    r16
                                    [
                                    \times 2/3
                                    {
                                        \half-air
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        cs'''16
                                        - \tweak X-extent ##f
                                        - \tweak padding 0
                                        ^ \markup {
                                                    \hspace #-0.5
                                                    \override #'(font-name . "ekmelos")
                                                    \fontsize #7
                                                    {
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe610
                                                            }
                                                            \hspace #-0.77
                                                            {
                                                                \char ##xe611
                                                            }
                                                    }
                                                }
                                        (
                                        ~
                                        \half-air
                                        cs'''64
                                        \half-air
                                        aqs''64
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    r8.
                                    r8
                                    dqs'''8.
                                    \mp
                                    ~
                                    dqs'''8
                                    \half-air
                                    \afterGrace
                                    gqs''2
                                    \pp
                                    - \tweak X-extent ##f
                                    - \tweak padding 0
                                    ^ \markup {
                                                \hspace #-0.5
                                                \override #'(font-name . "ekmelos")
                                                \fontsize #7
                                                {
                                                    {
                                                        \char ##xe610
                                                    }
                                                    \hspace #-0.77
                                                    {
                                                        \char ##xe611
                                                    }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe610
                                                        }
                                                        \hspace #-0.77
                                                        {
                                                            \char ##xe611
                                                        }
                                                }
                                            }
                                    - \tweak padding #7.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    r4.
                                    r2
                                    r2
                                    r2
                                    r2
                                    r4
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Bass Clarinet }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r4
                                        dqs'''8.
                                        \mp
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r4
                                        \half-air
                                        cs''8.
                                        :64
                                        \pp
                                        - \tweak padding #12.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        r16.
                                        [
                                        \half-air
                                        d''16.
                                        :128
                                        r16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \half-air
                                        c'''16.
                                        :128
                                        [
                                        (
                                        \half-air
                                        e''16
                                        :128
                                        \half-air
                                        bqs'16.
                                        :128
                                        ]
                                    }
                                    \half-air
                                    d'32
                                    :256
                                    )
                                    [
                                    r32.
                                    \half-air
                                    dqf'32.
                                    :256
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r32
                                        [
                                        \half-air
                                        gqs'32
                                        :256
                                        \stopTextSpan
                                        bqs'32
                                        \mp
                                        (
                                        aqs'64
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        cs'32
                                        )
                                        [
                                        r32
                                        \half-air
                                        gqs'64
                                        :512
                                        \pp
                                        - \tweak padding #14.75
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                        r32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \half-air
                                        ef'64
                                        :512
                                        [
                                        (
                                        \half-air
                                        af'32
                                        :256
                                        \half-air
                                        cs''32
                                        :256
                                        \half-air
                                        a'32
                                        :256
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        [
                                        \half-air
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        dqf'16
                                        :128
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        r16
                                        \half-air
                                        bqf32
                                        :256
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        \mp
                                        [
                                        (
                                        bf16
                                        )
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \half-air
                                        b16
                                        :128
                                        \pp
                                        [
                                        (
                                        - \tweak padding #12.75
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                        \half-air
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        c'32
                                        :256
                                        )
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            r32
                                            \half-air
                                            bqf32
                                            :256
                                            (
                                            \half-air
                                            bf32
                                            :256
                                            ]
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \times 4/5
                                    {
                                        \half-air
                                        cqs'32
                                        :256
                                        )
                                        \stopTextSpan
                                        [
                                        cqs'16
                                        \mp
                                        (
                                        bqf16
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        dqs'32
                                        )
                                        [
                                        r32
                                        \half-air
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 1
                                        c'64
                                        :512
                                        \pp
                                        (
                                        - \tweak padding #11.75
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                    }
                                    \times 4/5
                                    {
                                        \half-air
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        cqs'32
                                        :256
                                        \half-air
                                        d'64
                                        :512
                                        \half-air
                                        cs'64
                                        :512
                                        \half-air
                                        c'64
                                        :512
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \half-air
                                        d'32
                                        :256
                                        )
                                        [
                                        r32
                                        \half-air
                                        cqs'16
                                        :128
                                        (
                                        \half-air
                                        eqf32
                                        :256
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \half-air
                                        b64
                                        :512
                                        [
                                        \half-air
                                        ef'32
                                        :256
                                        \half-air
                                        bf64
                                        :512
                                        \half-air
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 1
                                        f64
                                        :512
                                        )
                                    }
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \half-air
                                        aqs64
                                        :512
                                        (
                                        \half-air
                                        ef'32
                                        :256
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context GrandStaff = "sub group 2"
                    <<
                        \tag #'voice4
                        {
                            \context Staff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Percussion I }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. I }
                                    r32
                                    [
                                    d'32
                                    :256
                                    - \stopped
                                    \pp
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { rub w/ drum brush }
                                    (
                                    a'32
                                    :256
                                    - \stopped
                                    )
                                    r32
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r16.
                                        [
                                        cs''16.
                                        :128
                                        - \stopped
                                        (
                                        af'32
                                        :256
                                        - \stopped
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r32
                                        [
                                        ef'16.
                                        :128
                                        - \stopped
                                        (
                                        af'16.
                                        :128
                                        - \stopped
                                        )
                                        ]
                                    }
                                    r16
                                    [
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        cs''16
                                        :128
                                        - \stopped
                                        (
                                        ~
                                        cs''64
                                        :512
                                        bf'64
                                        :512
                                        - \stopped
                                        )
                                        ]
                                    }
                                    r8.
                                    r8
                                    ef'8.
                                    \mp
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { strike w/ wood of drum brush }
                                    ~
                                    ef'8
                                    r2
                                    r4.
                                    r2
                                    r2
                                    r2
                                    r2
                                    r4
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                    <<
                                        \context Voice = "percussion 2 voice temp 1"
                                        {
                                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Percussion II }
                                              %! +SCORE
                                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
                                            \voiceOne
                                            ef'''8
                                            :64
                                            \p
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { Bristle-stick tremolo: Place LH brush bristles on key } \line { RH brush tremolo between bristles on key and handle on LH brush's handle. }  } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            r16
                                            r8
                                            r16
                                            ef'''8
                                            :64
                                            r8
                                            ef'''8
                                            :64
                                            r16
                                            r8
                                            r16
                                            ef'''8
                                            :64
                                            r8
                                            ef'''8
                                            :64
                                            r16
                                            ef'''16
                                            :128
                                            ~
                                            ef'''16
                                            :128
                                            r8.
                                            ef'''8
                                            :64
                                            r4
                                            ef'''8
                                            :64
                                            r4.
                                            \times 4/5
                                            {
                                                r16
                                                ef'''8
                                                r4
                                                r16
                                                ef'''8
                                            }
                                            \times 4/5
                                            {
                                                r8.
                                                ef'''8
                                                r4
                                                ef'''16
                                            }
                                            r4
                                            r32
                                            ef'''16.
                                            ~
                                            ef'''32
                                            r16
                                            ef'''32
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                r8.
                                                ef'''32
                                                \stopTextSpanOne
                                            }
                                        }
                                        \context Voice = "handle voice"
                                        {
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \voiceTwo
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r8
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r8
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r8
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r8
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \tweak style #'cross
                                            a16
                                            :128
                                            ~
                                            \tweak style #'cross
                                            a16
                                            :128
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r8.
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r4
                                            \tweak style #'cross
                                            a8
                                            :64
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r4.
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r16
                                                \tweak style #'cross
                                                a8
                                                :64
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r4
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r16
                                                \tweak style #'cross
                                                a8
                                                :64
                                            }
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r8.
                                                \tweak style #'cross
                                                a8
                                                :64
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r4
                                                \tweak style #'cross
                                                a16
                                                :128
                                            }
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r4
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r32
                                            \tweak style #'cross
                                            a16.
                                            :128
                                            ~
                                            \tweak style #'cross
                                            a32
                                            :256
                                            \once \override Dots.transparent = ##t
                                            \once \override Rest.transparent = ##t
                                            r16
                                            \tweak style #'cross
                                            a32
                                            :256
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \once \override Dots.transparent = ##t
                                                \once \override Rest.transparent = ##t
                                                r8.
                                                \tweak style #'cross
                                                a32
                                                :256
                                            }
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                    >>
                }
                \tag #'voice6
                {
                    \context Staff = "guitar staff"
                    {
                        \context Voice = "guitar voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Guitar }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Guit. }
                            r8.
                            r8
                            r8.
                            r8
                            r8.
                            r8
                            r8.
                            r8
                            ef'''2
                            :32
                            \pp
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. } \hspace #0.5 }
                            - \tweak bound-details.right.padding 2.5
                            \startTextSpanOne
                            - \tweak padding #7.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Ord. } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP }
                            - \tweak bound-details.right.padding 7.5
                            \startTextSpanTwo
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/7
                            {
                                r4
                                \stopTextSpanOne
                                \stopTextSpanTwo
                                af''8.
                                \mp
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 8/7
                            {
                                r8.
                                f'4
                                :32
                                \pp
                                - \tweak padding #12
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP } \hspace #0.5 }
                                - \tweak bound-details.right.padding 1
                                \startTextSpanTwo
                                - \tweak padding #15
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. } \hspace #0.5 }
                                - \tweak bound-details.right.padding 1.5
                                \startTextSpanOne
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                r16
                                [
                                ef'16.
                                :128
                                r16.
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                g'16.
                                :128
                                [
                                (
                                ef''16.
                                :128
                                \stopTextSpanTwo
                                - \tweak padding #12
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { ST } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP }
                                - \tweak bound-details.right.padding 1
                                \startTextSpanTwo
                                f'16
                                :128
                                ]
                            }
                            e'32.
                            :256
                            )
                            [
                            r64
                            r64
                            fs32.
                            :256
                            ]
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 8/7
                            {
                                r64
                                \stopTextSpanTwo
                                [
                                e'32
                                :256
                                f'32
                                \mp
                                \stopTextSpanOne
                                ef''32
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 8/7
                            {
                                g'32
                                [
                                r32
                                ef'32
                                :256
                                \pp
                                - \tweak padding #13.5
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST }
                                - \tweak bound-details.right.padding 1
                                \startTextSpanTwo
                                - \tweak padding #16.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. } \hspace #0.5 }
                                - \tweak bound-details.right.padding -4
                                \startTextSpanOne
                                r64
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 8/7
                            {
                                f32
                                :256
                                [
                                (
                                fs32
                                :256
                                ef'64
                                :512
                                e'32
                                :256
                                )
                                ]
                            }
                            \times 2/3
                            {
                                r16
                                [
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 1
                                cs''32
                                :256
                            }
                            \times 2/3
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 3
                                r32
                                fs''16
                                :128
                                \stopTextSpanOne
                                \stopTextSpanTwo
                                ]
                            }
                            \times 2/3
                            {
                                ef''8
                                \mp
                                [
                                f'16
                                ]
                            }
                            r4.
                            r4
                        }
                    }
                }
                \tag #'voice7
                {
                    \context Staff = "harp staff"
                    {
                        \context Voice = "harp voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Harp }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Hp. }
                            r8.
                            r8
                            r8.
                            r8
                            r8.
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ drum stick } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpan
                            r16.
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Voice.Glissando.thickness = #8.25
                            \once \override NoteHead.duration-log = 2
                            \ottava -1
                            \clef "bass"
                            <
                                \tweak style #'la
                                a,,
                                \tweak style #'la
                                b,,
                                \tweak style #'la
                                c,
                                \tweak style #'la
                                d,
                                \tweak style #'la
                                e,
                            >32
                            - \coda
                            - \marcato
                            \fff
                            \stopTextSpan
                            \ottava 0
                            r8.
                            r8
                            r2
                            r4
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ drum stick } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpan
                            r16.
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Voice.Glissando.thickness = #8.25
                            \once \override NoteHead.duration-log = 2
                            \ottava -1
                            <
                                \tweak style #'la
                                a,,
                                \tweak style #'la
                                b,,
                                \tweak style #'la
                                c,
                                \tweak style #'la
                                d,
                                \tweak style #'la
                                e,
                            >32
                            - \coda
                            - \marcato
                            \fff
                            \stopTextSpan
                            \ottava 0
                            r2
                            r2
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Voice.Glissando.thickness = #8.25
                            \once \override NoteHead.duration-log = 2
                            \ottava -1
                            <
                                \tweak style #'la
                                a,,
                                \tweak style #'la
                                b,,
                                \tweak style #'la
                                c,
                                \tweak style #'la
                                d,
                                \tweak style #'la
                                e,
                            >32
                            - \coda
                            - \marcato
                            \fff
                            - \tweak padding #9.75
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ drum stick } \hspace #0.5 }
                            - \tweak bound-details.right.padding -15
                            \startTextSpan
                            \ottava 0
                            r4...
                            \stopTextSpan
                            r2
                            r4
                        }
                    }
                }
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice8
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \ottava 2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Piano }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    \p
                                    r16
                                    r8
                                    r16
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    r8
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    r16
                                    r8
                                    r16
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    r8
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    r16
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    :128
                                    - \stopped
                                    \arpeggio
                                    \sustainOn
                                    ~
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    :128
                                    r8.
                                    \sustainOff
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    \sustainOn
                                    r4
                                    \sustainOff
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    \sustainOn
                                    r4.
                                    \sustainOff
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >8
                                        :64
                                        - \stopped
                                        \arpeggio
                                        r4
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >8
                                        :64
                                        - \stopped
                                        \arpeggio
                                        r8
                                    }
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >8
                                        :64
                                        - \stopped
                                        \arpeggio
                                        r4
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >8
                                        :64
                                        - \stopped
                                        \arpeggio
                                        r8
                                    }
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    :64
                                    - \stopped
                                    \arpeggio
                                    r16
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    :128
                                    - \stopped
                                    \arpeggio
                                    ~
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    :128
                                    r8.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16
                                        :128
                                        - \stopped
                                        \arpeggio
                                        r32
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >8
                                        :64
                                        - \stopped
                                        \arpeggio
                                        \ottava 0
                                    }
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r2
                                    r4.
                                    r2
                                    r2
                                    r2
                                    r2
                                    r4
                                }
                            }
                        }
                    >>
                }
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice10
                        {
                            \context Staff = "violin staff"
                            {
                                \context Voice = "violin voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vn. }
                                    r32
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ standard bow }
                                    [
                                    \big-half-harmonic
                                    a''32
                                    \pp
                                    ^ \punta-to-talon
                                    (
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpan
                                    \big-half-harmonic
                                    cs'''32
                                    )
                                    r32
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r16.
                                        [
                                        \big-half-harmonic
                                        af'''16.
                                        ^ \talon-to-punta
                                        (
                                        \big-half-harmonic
                                        ef'''32
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r32
                                        [
                                        \big-half-harmonic
                                        gqs''16.
                                        ^ \punta-to-talon
                                        (
                                        \big-half-harmonic
                                        cs'''16.
                                        )
                                        ]
                                    }
                                    r16
                                    [
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        aqs''16
                                        ^ \talon-to-punta
                                        (
                                        ~
                                        \big-half-harmonic
                                        aqs''64
                                        \big-half-harmonic
                                        dqs''64
                                        )
                                        ]
                                    }
                                    r8.
                                    \stopTextSpan
                                    r8
                                    gqs''8.
                                    \mp
                                    ~
                                    gqs''8
                                    \big-half-harmonic
                                    eqs''2
                                    \pp
                                    ^ \punta-to-talon
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpan
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r8.
                                        \stopTextSpan
                                        f'4
                                        \mp
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r4
                                        \big-half-harmonic
                                        \afterGrace
                                        dqs'8.
                                        \pp
                                        ^ \talon-to-punta
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTextSpan
                                        }
                                    }
                                    r2
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -15
                                    \startTextSpan
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    r4...
                                    \stopTextSpan
                                    r2
                                    r4
                                }
                            }
                        }
                        \tag #'voice11
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \staff-line-count 1
                                      %! +SCORE
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \override Staff.Clef.stencil = ##f
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
                                    \clef "percussion"
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    \p
                                    - \tweak padding 4.75
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ standard bow }
                                    - \tweak padding #3.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { CLB on the bridge } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    r16
                                    r8
                                    r16
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    r8
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    r16
                                    r8
                                    r16
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    r8
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    r16
                                    \tweak style #'cross
                                    c'16
                                    :128
                                    ~
                                    \tweak style #'cross
                                    c'16
                                    :128
                                    r8.
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    r4
                                    \afterGrace
                                    \tweak style #'cross
                                    c'8
                                    :64
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    r4.
                                    \times 4/5
                                    {
                                        r32
                                        \staff-line-count 1
                                          %! +SCORE
                                        \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                        \override Staff.Clef.stencil = ##f
                                        \clef "percussion"
                                        \tweak style #'cross
                                        c'8
                                        :64
                                        - \tweak padding #3.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { CLB on the bridge } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        r8..
                                        r16
                                        \tweak style #'cross
                                        c'8
                                        :64
                                        r16
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        \tweak style #'cross
                                        c'8
                                        :64
                                        r8
                                        r32
                                        r8
                                        \tweak style #'cross
                                        c'8
                                        :64
                                    }
                                    r8
                                    r32
                                    \tweak style #'cross
                                    c'16.
                                    :128
                                    ~
                                    \tweak style #'cross
                                    c'32
                                    :256
                                    r16
                                    \tweak style #'cross
                                    c'32
                                    :256
                                    ~
                                    \tweak style #'cross
                                    c'16.
                                    :128
                                    r32
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \tweak style #'cross
                                        c'16
                                        :128
                                        r32
                                        \tweak style #'cross
                                        c'64
                                        :512
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                                    r8.
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ standard bow }
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16.
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    \stopTextSpan
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    r8.
                                    r8
                                    r2
                                    r4
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16.
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    \stopTextSpan
                                    r2
                                    r2
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -15
                                    \startTextSpan
                                    r4...
                                    \stopTextSpan
                                    r2
                                    r4
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    r8.
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ standard bow }
                                    r8
                                    r8.
                                    r8
                                    r8.
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16.
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    \stopTextSpan
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    r8.
                                    r8
                                    r2
                                    r4
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16.
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    \stopTextSpan
                                    r2
                                    r2
                                    <g b d' f'>32
                                    - \coda
                                    - \marcato
                                    \fff
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 CLB + MST } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -15
                                    \startTextSpan
                                    r4...
                                    \stopTextSpan
                                    \revert Staff.Clef.stencil
                                    r8
                                    \times 4/5
                                    {
                                        \staff-line-count 5
                                        \big-half-harmonic
                                        \clef "bass"
                                        e32
                                        \pp
                                        ^ \punta-to-talon
                                        [
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpan
                                        ^ (
                                        \big-half-harmonic
                                        dqf32
                                        )
                                        r64
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        dqs32
                                        ^ \talon-to-punta
                                        [
                                        ^ (
                                        \big-half-harmonic
                                        c16
                                        )
                                        ef16
                                        \mp
                                        \stopTextSpan
                                        ]
                                        ^ (
                                    }
                                    \times 4/5
                                    {
                                        b16
                                        [
                                        cs'16
                                        )
                                        \big-half-harmonic
                                        bqf32
                                        \pp
                                        ^ \punta-to-talon
                                        ]
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpan
                                        _ (
                                    }
                                    \times 4/5
                                    {
                                        r64
                                        [
                                        \big-half-harmonic
                                        ef32
                                        \big-half-harmonic
                                        cqs64
                                        )
                                        \big-half-harmonic
                                        cqs64
                                        ^ \talon-to-punta
                                        ]
                                        _ (
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        b,64
                                        [
                                        \big-half-harmonic
                                        c64
                                        \big-half-harmonic
                                        bf,32
                                        )
                                        r64
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        d32
                                        ^ \punta-to-talon
                                        [
                                        ^ (
                                        \big-half-harmonic
                                        aqs16
                                        \big-half-harmonic
                                        c32
                                        \big-half-harmonic
                                        bqs,32
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        fqs32
                                        [
                                        \big-half-harmonic
                                        aqs32
                                        )
                                        r64
                                        \stopTextSpan
                                        ]
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
