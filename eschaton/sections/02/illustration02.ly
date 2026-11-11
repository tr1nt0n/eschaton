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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (6 11 19 22 15 15)))
            \time 4/8
            s1 * 1/2
            - \tweak padding 17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { II. interpenetration ( i ) }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-0.5 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 40" } } }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \break
            \noPageBreak
            \time 3/8
            s1 * 3/8
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \break
            \pageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 20 25 22 31 23 25 25 25)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
              %! +SCORE
            - \tweak padding #15
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \noBreak
            \time 5/8
            s1 * 5/8
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 26 26 28 35 30 30)))
            \time 4/8
            s1 * 1/2
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \noBreak
            \time 2/8
            s1 * 1/4
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'14
            - \tweak padding -8
            _ \middle-fermata
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
            \pageBreak
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
                                    r2
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r4.
                                    r4
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    ef'''2
                                    \p
                                    ^ \markup {
                                                    \hspace #-2.2
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 4 1 0)
                                          (1 0 1.5 -4 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 3 9 0)
                                          (9 0 9.5 -3 10 0)
                                          (10 0 10.5 5 11 0)
                                          (11 0 11.5 -5 12 0)
                                          (12 0 12.5 4 13 0)
                                          (13 0 13.5 -4 14 0)
                                          (14 0 14.5 2 15 0)
                                          (15 0 15.5 -2 16 0)
                                          (16 0 16.5 4 17 0)
                                          (17 0 17.5 -4 18 0)
                                          (18 0 18.5 2 19 0)
                                          (19 0 19.5 -2 20 0)
                                          (20 0 20.5 1 21 0)
                                          (21 0 21.5 -1 22 0)
                                          (22 0 22.5 2 23 0)
                                          (23 0 23.5 -2 24 0)
                                          (24 0 24.5 3 25 0)
                                          (25 0 25.5 -3 26 0)
                                          (26 0 26.5 5 27 0)
                                          (27 0 27.5 -5 28 0)
                                          (28 0 28.5 4 29 0)
                                          (29 0 29.5 -4 30 0)
                                          (30 0 30.5 2 31 0)
                                          (31 0 31.5 -2 32 0)
                                          (32 0 32.5 4 33 0)
                                          (33 0 33.5 -4 34 0)
                                          (34 0 34.5 2 35 0)
                                          (35 0 35.5 -2 36 0)
                                          (36 0 36.5 1 37 0)
                                          (37 0 37.5 -1 38 0)
                                          (38 0 38.5 2 39 0)
                                          (39 0 39.5 -2 40 0)
                                          (40 0 40.5 3 41 0)
                                          (41 0 41.5 -3 42 0)
                                          (42 0 42.5 5 43 0)
                                          (43 0 43.5 -5 44 0)
                                          (44 0 44.5 4 45 0)
                                          (45 0 45.5 -4 46 0)
                                          (46 0 46.5 2 47 0)
                                          (47 0 47.5 -2 48 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    ~
                                    ef'''8
                                    [
                                    r16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \slapped
                                    e'''16
                                    \f
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Slap } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    d'''32
                                    r32
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    gf'''32
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    dqf'''16
                                    ]
                                    r16
                                    [
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    e'''16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    eqf'''16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    aqs''32
                                    r32
                                    dqf'''32
                                    \stopTextSpan
                                    ]
                                    \revert-noteheads
                                    cqf'''8.
                                    \p
                                    ^ \markup {
                                                    \hspace #-2.2
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 2 1 0)
                                          (1 0 1.5 -2 2 0)
                                          (2 0 2.5 4 3 0)
                                          (3 0 3.5 -4 4 0)
                                          (4 0 4.5 2 5 0)
                                          (5 0 5.5 -2 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 2 9 0)
                                          (9 0 9.5 -2 10 0)
                                          (10 0 10.5 3 11 0)
                                          (11 0 11.5 -3 12 0)
                                          (12 0 12.5 5 13 0)
                                          (13 0 13.5 -5 14 0)
                                          (14 0 14.5 4 15 0)
                                          (15 0 15.5 -4 16 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    [
                                    ef'''8.
                                    ^ \markup {
                                                    \hspace #-1
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 4 1 0)
                                          (1 0 1.5 -4 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 4 5 0)
                                          (5 0 5.5 -4 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                          (10 0 10.5 2 11 0)
                                          (11 0 11.5 -2 12 0)
                                          (12 0 12.5 3 13 0)
                                          (13 0 13.5 -3 14 0)
                                          (14 0 14.5 5 15 0)
                                          (15 0 15.5 -5 16 0)
                                          (16 0 16.5 4 17 0)
                                          (17 0 17.5 -4 18 0)
                                          (18 0 18.5 2 19 0)
                                          (19 0 19.5 -2 20 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    ]
                                    r4.
                                    r4.
                                    r4
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    r2
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    \big-half-harmonic
                                    dqs'8.
                                    :64
                                    \p
                                    [
                                    (
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \big-half-harmonic
                                    cs'8.
                                    :64
                                    )
                                    ]
                                    \override TupletNumber.text = \markup { 3:2 }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \big-half-harmonic
                                        d'16
                                        :128
                                        (
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        c'16
                                        :128
                                    }
                                    \revert TupletNumber.text
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        e'32.
                                        \stopTextSpan
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        bqs32
                                    }
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        d'32
                                        dqf'32.
                                        )
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        r16
                                        [
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        gqs'16.
                                        :128
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpan
                                        _ (
                                    }
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    bqs'32.
                                    :256
                                    \big-half-harmonic
                                    aqs'32.
                                    :256
                                    \big-half-harmonic
                                    cs''32
                                    :256
                                    ]
                                    ~
                                    \big-half-harmonic
                                    cs''16
                                    :128
                                    [
                                    gqs''32.
                                    \stopTextSpan
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 1
                                    ef''64
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    ef''16
                                    ~
                                    ef''64
                                    )
                                    r32.
                                    ]
                                    \big-half-harmonic
                                    af'8
                                    :64
                                    [
                                    (
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { 1/2 air + fluttertongue } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    \override TupletNumber.text = \markup { 3:2 }
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        cs''32
                                        :256
                                        \big-half-harmonic
                                        a'32
                                        :256
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        dqf''32
                                        :256
                                    }
                                    \revert TupletNumber.text
                                    \big-half-harmonic
                                    bqf'16
                                    :128
                                    )
                                    \stopTextSpan
                                    ]
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    <ef' b' a''>2
                                    - \accent
                                    \ff
                                    \laissezVibrer
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r4
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \center-column { \line { holding drum brush against keys } \line { + rubbing brush bristles w/ triangle beater }  } }
                                    \override Dots.staff-position = #2
                                    c'8
                                    \p
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    bf'4
                                    \override Dots.staff-position = #2
                                    d'4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    bf'4
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'8
                                    [
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    ]
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    r2
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r4
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \center-column { \line { holding drum brush against keys } \line { + rubbing brush bristles w/ triangle beater }  } }
                                    \override Dots.staff-position = #2
                                    f'''8
                                    \p
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    a''4
                                    \override Dots.staff-position = #2
                                    f'''4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    g''4
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    [
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cs'''8
                                    ]
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                            r2
                            r2
                            r4.
                            r4.
                            r4.
                            c'8
                            :64
                            \mp
                            [
                            (
                            - \tweak padding #7.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. + MSP } \hspace #0.5 }
                            - \tweak bound-details.right.padding 2.5
                            \startTextSpan
                            fs8
                            :64
                            \override TupletNumber.text = \markup { 3:2 }
                            \times 2/3
                            {
                                r16
                                bf16
                                :128
                                af16
                                :128
                                ]
                            }
                            \revert TupletNumber.text
                            b8
                            :64
                            )
                            [
                            fs'8
                            \stopTextSpan
                            ]
                            cs'8
                            :64
                            [
                            (
                            - \tweak padding #11
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. + MSP } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpan
                            \times 2/3
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                fs'16
                                :128
                                ]
                                r8
                            }
                            \times 2/3
                            {
                                b'32
                                :256
                                [
                                \override TupletNumber.text = \markup { 3:2 }
                                \times 2/3
                                {
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    g'32
                                    :256
                                    c''32
                                    :256
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    a''32
                                    :256
                                    )
                                    \stopTextSpan
                                }
                                \revert TupletNumber.text
                            }
                            \times 2/3
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                bf'16
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 1
                                af'32
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            r32
                            a'16
                            bf'32
                            ]
                            a'16
                            :128
                            [
                            (
                            - \tweak padding #10
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. + MSP } \hspace #0.5 }
                            - \tweak bound-details.right.padding 2.5
                            \startTextSpan
                            af'32
                            :256
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            b'32
                            :256
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            a'32
                            :256
                            )
                            r32
                            \stopTextSpan
                            cs''16
                            ]
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r8
                              %! +SCORE
                            \stopStaff \startStaff
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
                            r2
                            r2
                            r4.
                            r4.
                            \clef "bass"
                            r4.
                            ^ \markup { \harp-pedal "-v-|^v-^" }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 12/11
                            {
                                ef,64
                                :512
                                \mp
                                [
                                (
                                - \tweak padding #17
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bisbig. very close to frame } \hspace #0.5 }
                                - \tweak bound-details.right.padding 2.5
                                \startTextSpan
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 1
                                cs32.
                                :256
                                )
                                \override TupletNumber.text = \markup { 3:2 }
                                \times 2/3
                                {
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    d32
                                    :256
                                    (
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    cs32
                                    :256
                                }
                                \revert TupletNumber.text
                                ef,32.
                                :256
                                ]
                            }
                            \times 8/11
                            {
                                b,16.
                                :128
                                [
                                cs8
                                :64
                                b,16.
                                :128
                                )
                                r32
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 12/11
                            {
                                ef,16
                                :128
                                [
                                (
                                cs64
                                \stopTextSpan
                                b,64
                                cs64
                                b,64
                                d32.
                                )
                                ]
                            }
                            \times 2/3
                            {
                                r32
                                [
                                af,16
                                :128
                                (
                                - \tweak padding #14
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bisbig. very close to frame } \hspace #0.5 }
                                - \tweak bound-details.right.padding 2.5
                                \startTextSpan
                            }
                            \times 2/3
                            {
                                cs8
                                :64
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                b,16
                                :128
                            }
                            \times 2/3
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 3
                                fs32
                                :256
                                af16
                                :128
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                g16.
                                :128
                                )
                                [
                                r16
                                \stopTextSpan
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                \clef "treble"
                                b16.
                                (
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            fs'32.
                            cs''64
                            ]
                            ~
                            cs''64
                            [
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            fs''32.
                            :256
                            - \tweak padding #11
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { Bisbig. } \line { very close to frame }  } } \hspace #0.5 }
                            - \tweak bound-details.right.padding 2.5
                            \startTextSpan
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                b''16
                                :128
                                g''16.
                                :128
                                )
                                r16.
                                \stopTextSpan
                                ]
                            }
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r8
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    \once \override Staff.PianoPedalBracket.shorten-pair = #'(0 . 2)
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
                                    >4
                                    - \accent
                                    - \stopped
                                    \ff
                                    \sustainOn
                                    \ottava 0
                                    r4
                                    \sustainOff
                                    \ottava 2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8.
                                    - \accent
                                    - \stopped
                                    [
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8
                                    - \accent
                                    - \stopped
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8.
                                    - \accent
                                    - \stopped
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8.
                                    - \accent
                                    - \stopped
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >8.
                                    - \accent
                                    - \stopped
                                    ]
                                    \ottava 0
                                    r4.
                                    r4.
                                    r4.
                                    r4
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    r2
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r4.
                                    r4
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    ef'''2
                                    \p
                                    ^ \markup {
                                                    \hspace #-2.2
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 2 1 0)
                                          (1 0 1.5 -2 2 0)
                                          (2 0 2.5 4 3 0)
                                          (3 0 3.5 -4 4 0)
                                          (4 0 4.5 2 5 0)
                                          (5 0 5.5 -2 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 2 9 0)
                                          (9 0 9.5 -2 10 0)
                                          (10 0 10.5 3 11 0)
                                          (11 0 11.5 -3 12 0)
                                          (12 0 12.5 5 13 0)
                                          (13 0 13.5 -5 14 0)
                                          (14 0 14.5 4 15 0)
                                          (15 0 15.5 -4 16 0)
                                          (16 0 16.5 2 17 0)
                                          (17 0 17.5 -2 18 0)
                                          (18 0 18.5 4 19 0)
                                          (19 0 19.5 -4 20 0)
                                          (20 0 20.5 2 21 0)
                                          (21 0 21.5 -2 22 0)
                                          (22 0 22.5 1 23 0)
                                          (23 0 23.5 -1 24 0)
                                          (24 0 24.5 2 25 0)
                                          (25 0 25.5 -2 26 0)
                                          (26 0 26.5 3 27 0)
                                          (27 0 27.5 -3 28 0)
                                          (28 0 28.5 5 29 0)
                                          (29 0 29.5 -5 30 0)
                                          (30 0 30.5 4 31 0)
                                          (31 0 31.5 -4 32 0)
                                          (32 0 32.5 2 33 0)
                                          (33 0 33.5 -2 34 0)
                                          (34 0 34.5 4 35 0)
                                          (35 0 35.5 -4 36 0)
                                          (36 0 36.5 2 37 0)
                                          (37 0 37.5 -2 38 0)
                                          (38 0 38.5 1 39 0)
                                          (39 0 39.5 -1 40 0)
                                          (40 0 40.5 2 41 0)
                                          (41 0 41.5 -2 42 0)
                                          (42 0 42.5 3 43 0)
                                          (43 0 43.5 -3 44 0)
                                          (44 0 44.5 5 45 0)
                                          (45 0 45.5 -5 46 0)
                                          (46 0 46.5 4 47 0)
                                          (47 0 47.5 -4 48 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    \times 2/3
                                    {
                                        r32
                                        [
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        bqf''16
                                        \f
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        df'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        cqs'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        gqf'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        r16
                                        \big-half-harmonic
                                        bqf''8
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        aqf''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        c'''16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \big-half-harmonic
                                        gqf'''8
                                    }
                                    \times 2/3
                                    {
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        d'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        g'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        c'''16
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        r32
                                        \big-half-harmonic
                                        af''16
                                        \stopTextSpan
                                        ]
                                    }
                                    cqs'''8.
                                    \p
                                    ^ \markup {
                                                    \hspace #-2.2
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 4 1 0)
                                          (1 0 1.5 -4 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 4 5 0)
                                          (5 0 5.5 -4 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                          (10 0 10.5 2 11 0)
                                          (11 0 11.5 -2 12 0)
                                          (12 0 12.5 3 13 0)
                                          (13 0 13.5 -3 14 0)
                                          (14 0 14.5 5 15 0)
                                          (15 0 15.5 -5 16 0)
                                          (16 0 16.5 4 17 0)
                                          (17 0 17.5 -4 18 0)
                                          (18 0 18.5 2 19 0)
                                          (19 0 19.5 -2 20 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    [
                                    aqs''8.
                                    ^ \markup {
                                                    \hspace #-1
                                                    \score {
                                                        \new Staff \with {
                                                          \remove "Time_signature_engraver"
                                                        }
                                                        {
                                                            \clef "percussion"
                                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                                            \override Staff.Clef.text = \vibrato-clef
                                                            \override Staff.Clef.X-extent = ##f
                                                            \override Staff.StaffSymbol.line-positions = #'(4.75 0 -4.75)
                                                            \override Staff.StaffSymbol.line-count = #3
                                                            \override Staff.NoteHead.transparent = ##t
                                                            \override Staff.Stem.stencil = ##f
                                                            \override Staff.Flag.stencil = ##f
                                                            \override Staff.Dots.stencil = ##f
                                                            \override Staff.TupletBracket.stencil = ##f
                                                            \override Staff.TupletNumber.stencil = ##f
                                                            \fancy-gliss
                                       #'(
                                          (0 0 0.5 5 1 0)
                                          (1 0 1.5 -5 2 0)
                                          (2 0 2.5 4 3 0)
                                          (3 0 3.5 -4 4 0)
                                          (4 0 4.5 2 5 0)
                                          (5 0 5.5 -2 6 0)
                                          (6 0 6.5 4 7 0)
                                          (7 0 7.5 -4 8 0)
                                          (8 0 8.5 2 9 0)
                                          (9 0 9.5 -2 10 0)
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #-2
                                                            \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                                        }
                                                        \layout {
                                                          ragged-right = ##t
                                                          indent = 0\cm
                                                        }
                                                      }
                                                    }
                                    ]
                                    r8
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ loose bow }
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    fqs'4
                                    - \tenuto
                                    - \twist-bow
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Twist on IV } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    fqs'16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    cs''16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \revert Dots.staff-position
                                    \tweak style #'slash
                                    cs''4
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    f'4
                                    - \tenuto
                                    - \twist-bow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    f'8.
                                    [
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'slash
                                    c''8.
                                    - \tenuto
                                    - \twist-bow
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    g'8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    bqs'16
                                    - \tenuto
                                    - \twist-bow
                                    [
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    f'16
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    \tweak style #'slash
                                    dqf''8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    r2
                                    r2
                                    r4.
                                    r8
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ loose bow }
                                    \override Dots.staff-position = #2
                                    \clef "alto"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    c'8
                                    - \tenuto
                                    - \twist-bow
                                    \p
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Twist on IV } \hspace #0.5 }
                                    \startTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    eqs'8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    eqs'8.
                                    [
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    dqf'8.
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'slash
                                    dqf'4
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'slash
                                    ef'8
                                    - \tenuto
                                    - \twist-bow
                                    ~
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    ef'8.
                                    [
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    cs'16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'slash
                                    cs'4
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \afterGrace
                                    \tweak style #'slash
                                    d'4
                                    - \tenuto
                                    - \twist-bow
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    r2
                                    r4.
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ loose bow }
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    \tweak style #'slash
                                    d8
                                    - \tenuto
                                    - \twist-bow
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Twist on IV } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'slash
                                    d4.
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'slash
                                    aqs4
                                    - \tenuto
                                    - \twist-bow
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    c8
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'slash
                                    bqs8
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \tweak style #'slash
                                    fqs4
                                    - \tenuto
                                    - \twist-bow
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    aqs4.
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \afterGrace
                                    \tweak style #'slash
                                    gqs4
                                    - \tenuto
                                    - \twist-bow
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    r4.
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ loose bow }
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    \tweak style #'slash
                                    b8
                                    - \tenuto
                                    - \twist-bow
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Twist on IV } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'slash
                                    b8.
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'slash
                                    fqs16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \revert Dots.staff-position
                                    \tweak style #'slash
                                    fqs4
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    cs'4.
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \tweak style #'slash
                                    fs4.
                                    - \tenuto
                                    - \twist-bow
                                    \override Dots.staff-position = #2
                                    \tweak style #'slash
                                    b4
                                    - \tenuto
                                    - \twist-bow
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'slash
                                    g8
                                    - \tenuto
                                    - \twist-bow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \tweak style #'slash
                                    g4
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'slash
                                    bqs8
                                    - \tenuto
                                    - \twist-bow
                                    ~
                                    \revert Dots.staff-position
                                    \afterGrace
                                    \tweak style #'slash
                                    bqs4
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    r2
                                    r4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
