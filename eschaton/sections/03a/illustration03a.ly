  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 30 30)))
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
            \noPageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 30 30 30)))
            \time 4/8
            s1 * 1/2
            \noBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \time 4/8
            s1 * 1/2
            \break
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \time 2/8
            s1 * 1/4
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
                                        c'16
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        c'16
                                        c'16.
                                        c'16.
                                    }
                                    c'32.
                                    r32.
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r32
                                        c'32
                                        c'64
                                        c'32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'64
                                        r32
                                        c'32
                                        r32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'64
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        c'32
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        c'32
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'8
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        c'16
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        c'16
                                    }
                                    \times 2/3
                                    {
                                        c'32
                                        c'16
                                    }
                                    c'32
                                    c'16
                                    c'32
                                    r32
                                    c'64
                                    c'64
                                    c'64
                                    c'64
                                    ~
                                    c'64
                                    c'64
                                    \times 2/3
                                    {
                                        c'16
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            r16
                                            c'16
                                            c'16
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
                                    \big-half-harmonic
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
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \big-half-harmonic
                                    a''32
                                    )
                                    r32
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r16.
                                        [
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        af''32
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r32
                                        [
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        gqs'''16.
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
                                        \big-half-harmonic
                                        cs'''64
                                        \big-half-harmonic
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
                                    \big-half-harmonic
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
                                    - \tweak padding #7.5
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
                                        \big-half-harmonic
                                        cs''8.
                                        :64
                                        \pp
                                        - \tweak padding #12
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
                                        \big-half-harmonic
                                        d''16.
                                        :128
                                        r16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \big-half-harmonic
                                        c'''16.
                                        :128
                                        [
                                        (
                                        \big-half-harmonic
                                        e''16
                                        :128
                                        \big-half-harmonic
                                        bqs'16.
                                        :128
                                        ]
                                    }
                                    \big-half-harmonic
                                    d'32
                                    :256
                                    )
                                    [
                                    r32.
                                    \big-half-harmonic
                                    dqf'32.
                                    :256
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        r32
                                        [
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        gqs'64
                                        :512
                                        \pp
                                        - \tweak padding #14.5
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
                                        \big-half-harmonic
                                        ef'64
                                        :512
                                        [
                                        (
                                        \big-half-harmonic
                                        af'32
                                        :256
                                        \big-half-harmonic
                                        cs''32
                                        :256
                                        \big-half-harmonic
                                        a'32
                                        :256
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        [
                                        \big-half-harmonic
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
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        b16
                                        :128
                                        \pp
                                        [
                                        (
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                        \big-half-harmonic
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
                                            \big-half-harmonic
                                            bqf32
                                            :256
                                            (
                                            \big-half-harmonic
                                            bf32
                                            :256
                                            ]
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 1
                                        c'64
                                        :512
                                        \pp
                                        (
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        cqs'32
                                        :256
                                        \big-half-harmonic
                                        d'64
                                        :512
                                        \big-half-harmonic
                                        cs'64
                                        :512
                                        \big-half-harmonic
                                        c'64
                                        :512
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        d'32
                                        :256
                                        )
                                        [
                                        r32
                                        \big-half-harmonic
                                        cqs'16
                                        :128
                                        (
                                        \big-half-harmonic
                                        eqf32
                                        :256
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        b64
                                        :512
                                        [
                                        \big-half-harmonic
                                        ef'32
                                        :256
                                        \big-half-harmonic
                                        bf64
                                        :512
                                        \big-half-harmonic
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
                                        \big-half-harmonic
                                        aqs64
                                        :512
                                        (
                                        \big-half-harmonic
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
                                        cs'16
                                        :128
                                        - \stopped
                                        (
                                        ~
                                        cs'64
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Percussion II }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Piano }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
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
                                    [
                                    \big-half-harmonic
                                    a''32
                                    \pp
                                    ^ \punta-to-talon
                                    (
                                    - \tweak padding #10.5
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
                                    r2
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
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
                                    r8
                                    \times 4/5
                                    {
                                        c'32
                                        c'32
                                        r64
                                    }
                                    \times 4/5
                                    {
                                        c'32
                                        c'16
                                        c'16
                                    }
                                    \times 4/5
                                    {
                                        c'16
                                        c'16
                                        c'32
                                    }
                                    \times 4/5
                                    {
                                        r64
                                        c'32
                                        c'64
                                        c'64
                                    }
                                    \times 4/5
                                    {
                                        c'64
                                        c'64
                                        c'32
                                        r64
                                    }
                                    \times 4/5
                                    {
                                        c'32
                                        c'16
                                        c'32
                                        c'32
                                    }
                                    \times 4/5
                                    {
                                        c'32
                                        c'32
                                        r64
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
}
