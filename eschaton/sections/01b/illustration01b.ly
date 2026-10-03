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
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
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
                                    r2.
                                    r2.
                                    \ottava 1
                                    \set fontSize = #-3
                                    g''''64
                                    - \flageolet
                                    \pp
                                    [
                                    (
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    ]
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    )
                                    \set fontSize = #-1
                                    \once \override TupletBracket.stencil = ##f
                                    \once \override TupletNumber.stencil = ##f
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'4.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \set fontSize = #-3
                                        \once \override Beam.grow-direction = #left
                                        g''''64 * 15/16
                                        - \flageolet
                                          %! rmakers.beam()
                                        [
                                        (
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {16} #1.75 } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup {}
                                        - \tweak bound-details.right.padding -4
                                        \startTextSpanOne
                                        a''''64 * 15/16
                                        - \flageolet
                                        b''''64 * 1
                                        - \flageolet
                                        a''''64 * 17/16
                                        - \flageolet
                                        g''''64 * 19/16
                                        - \flageolet
                                        a''''64 * 21/16
                                        - \flageolet
                                        b''''64 * 3/2
                                        - \flageolet
                                        a''''64 * 27/16
                                        - \flageolet
                                        g''''64 * 2
                                        - \flageolet
                                        a''''64 * 39/16
                                        - \flageolet
                                        b''''64 * 23/8
                                        - \flageolet
                                        a''''64 * 27/8
                                        - \flageolet
                                        g''''64 * 59/16
                                        - \flageolet
                                        )
                                        \stopTextSpanOne
                                          %! rmakers.beam()
                                        ]
                                        \ottava 0
                                        \set fontSize = #-1
                                    }
                                    \revert TupletNumber.text
                                    \ottava 1
                                    \set fontSize = #-3
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''''16
                                    - \flageolet
                                    [
                                    (
                                    a''''16
                                    - \flageolet
                                    b''''16
                                    - \flageolet
                                    \revert Staff.Stem.stemlet-length
                                    a''''16
                                    - \flageolet
                                    ]
                                    g''''16
                                    - \flageolet
                                    )
                                    \ottava 0
                                    \set fontSize = #-1
                                    r8.
                                    \ottava 1
                                    \set fontSize = #-3
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''''16
                                    - \flageolet
                                    [
                                    (
                                    a''''16
                                    - \flageolet
                                    b''''16
                                    - \flageolet
                                    \revert Staff.Stem.stemlet-length
                                    a''''16
                                    - \flageolet
                                    )
                                    ]
                                    \ottava 0
                                    \set fontSize = #-1
                                    r4
                                    r16
                                    \ottava 1
                                    \set fontSize = #-3
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''''16
                                    - \flageolet
                                    [
                                    (
                                    a''''16
                                    - \flageolet
                                    \revert Staff.Stem.stemlet-length
                                    b''''16
                                    - \flageolet
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''''16
                                    - \flageolet
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g''''16
                                    - \flageolet
                                    )
                                    ]
                                    \ottava 0
                                    \set fontSize = #-1
                                    r8
                                    r2.
                                    r4
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bass }
                                    r8
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 32/33
                                    {
                                        \set fontSize = #-3
                                        \my-hack-slash
                                        \override Staff.Beam.beam-thickness = #0.45
                                        \set stemLeftBeamCount = 0
                                        \set stemRightBeamCount = 1
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "p"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        [
                                        (
                                        \<
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        ds''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        aqs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        cs'''''32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "ff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        \>
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        aqs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        ds''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''32
                                        )
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        b'32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "p"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        (
                                        \<
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        ds''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        aqs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        cs'''''32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "ff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        \>
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        aqs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        ds''''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        fs'''32
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \tweak style #'harmonic
                                        b''32
                                        \set fontSize = #-1
                                        \revert Staff.Beam.beam-thickness
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 0
                                        \revert Staff.Stem.stemlet-length
                                        b'32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "p"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        )
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r8
                                    r2.
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
                                    <
                                        \tweak style #'harmonic
                                        eqs''
                                        \tweak style #'harmonic
                                        bqs''
                                    >8
                                    [
                                    - \tweak padding #11.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (oneRT1h two three four five sixRT1h)) (lh . ()) (rh . (ees))) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -6
                                    \startTextSpanOne
                                    r16
                                    <
                                        \tweak style #'harmonic
                                        eqs''
                                        \tweak style #'harmonic
                                        bqs''
                                    >16
                                    ]
                                    ~
                                    <
                                        \tweak style #'harmonic
                                        eqs''
                                        \tweak style #'harmonic
                                        bqs''
                                    >32
                                    [
                                    r32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \override Dots.staff-position = #2
                                        <
                                            \tweak style #'harmonic
                                            eqs''
                                            \tweak style #'harmonic
                                            bqs''
                                        >8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \>
                                        ~
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        <
                                            \tweak style #'harmonic
                                            eqs''
                                            \tweak style #'harmonic
                                            bqs''
                                        >32
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            <g'' d'''>16
                                        }
                                        r16.
                                        <
                                            \tweak style #'harmonic
                                            eqs''
                                            \tweak style #'harmonic
                                            bqs''
                                        >8
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Dots.staff-position = #2
                                        \afterGrace
                                        <
                                            \tweak style #'harmonic-mixed
                                            f''
                                            \tweak style #'harmonic-mixed
                                            cqf'''
                                        >4.
                                        \ppp
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #11.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (oneRT1h two three four five)) (lh . ()) (rh . ())) } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -6
                                        \startTextSpanOne
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            <d'' a''>16
                                        }
                                        r16
                                        \override Dots.staff-position = #2
                                        <
                                            \tweak style #'harmonic-mixed
                                            f''
                                            \tweak style #'harmonic-mixed
                                            cqf'''
                                        >4
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
                                        \afterGrace
                                        <
                                            \tweak style #'harmonic
                                            f''
                                            \tweak style #'harmonic
                                            cqf'''
                                        >16
                                        \stopTextSpanOne
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            <a'' e'''>16
                                        }
                                        r8
                                    }
                                    r2.
                                    r2.
                                    r2.
                                    r2
                                    r32
                                    [
                                    \vibrato #'(3 5 ) #5  #0.2
                                    \afterGrace
                                    ef'''32
                                    \pp
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r16
                                    \vibrato #'(4 ) #4  #0.2
                                    \afterGrace
                                    ef'''16
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r32
                                    \vibrato #'(2 4 ) #4  #0.2
                                    \afterGrace
                                    ef'''32
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r8
                                        \vibrato #'(2 1 2 3 ) #3  #0.2
                                        \afterGrace
                                        ef'''4
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    \times 2/3
                                    {
                                        r8
                                        <b'>4
                                        \f
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r8
                                        <b'>4
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r8
                                        <b'>4
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r8
                                        \vibrato #'(5 4 ) #4  #0.2
                                        \afterGrace
                                        ef'''4
                                        \p
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    r32
                                    [
                                    \vibrato #'(2 4 2 1 ) #1  #0.2
                                    \afterGrace
                                    ef'''16.
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r32
                                    \vibrato #'(2 3 5 4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''16.
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        r16
                                        [
                                        \vibrato #'(4 2 1 ) #1  #0.2
                                        \afterGrace
                                        ef'''8.
                                        ]
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    r32
                                    [
                                    \vibrato #'(2 3 ) #3  #0.2
                                    \afterGrace
                                    ef'''16.
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        r16
                                        [
                                        \vibrato #'(5 ) #5  #0.2
                                        \afterGrace
                                        ef'''8.
                                        ]
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Bass Clarinet }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''8
                                    :64
                                    [
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rapid, random pressing of buttons + teeth on reed } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''32
                                    :256
                                    - \staccato
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''32
                                    :256
                                    - \staccato
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''16
                                    :128
                                    ]
                                    ~
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''32
                                    :256
                                    [
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    e'''32
                                    :256
                                    - \staccato
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''8
                                        :64
                                        \>
                                        ~
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''32
                                        :256
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''32
                                        :256
                                        - \staccato
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''32
                                        :256
                                        - \staccato
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''32
                                        :256
                                        - \staccato
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''8
                                        :64
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''4.
                                        :32
                                        \ppp
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''16
                                        :128
                                        - \staccato
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''4
                                        :32
                                        ~
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''16
                                        :128
                                        [
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''16
                                        :128
                                        - \staccato
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        e'''16
                                        :128
                                        - \staccato
                                        \stopTextSpan
                                        ]
                                    }
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2
                                    <
                                        f
                                        \tweak style #'harmonic
                                        f''''
                                    >4
                                    \mp
                                    ~
                                    <
                                        f
                                        \tweak style #'harmonic
                                        f''''
                                    >2.
                                    <
                                        f
                                        \tweak style #'harmonic
                                        f''''
                                    >2
                                    \pp
                                    r4
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
                                    r2.
                                    r2.
                                    r2.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>8
                                    _ \p
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>8
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>8
                                        [
                                        <c' df' b'>8
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>16
                                    [
                                    <c' df' b'>16
                                    ~
                                    <c' df' b'>16
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>16
                                        [
                                        <c' df' b'>8
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>8
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>8
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>8
                                        [
                                        <c' df' b'>8
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>16
                                    [
                                    <c' df' b'>16
                                    ~
                                    <c' df' b'>16
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>32
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>8
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>16.
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>16
                                    [
                                    <c' df' b'>16
                                    ~
                                    <c' df' b'>32
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16.
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>32
                                        [
                                        <c' df' b'>16.
                                        <c' df' a' b'>8
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>32
                                    [
                                    <c' df' a' b'>16.
                                    ~
                                    <c' df' a' b'>32
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16.
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>8
                                        [
                                        <c' df' a' b'>16.
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16.
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' a' b'>16.
                                    [
                                    <c' df' b'>32
                                    ~
                                    <c' df' b'>16
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>32
                                        [
                                        <c' df' a' b'>16.
                                        <c' df' b'>16.
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' a' b'>16.
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>16.
                                    [
                                    <c' df' b'>32
                                    ~
                                    <c' df' b'>16
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' a' b'>16
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' a' b'>32
                                        [
                                        <c' df' b'>16.
                                        <c' df' a' b'>16.
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16.
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' df' b'>16.
                                    [
                                    <c' df' a' b'>32
                                    ~
                                    <c' df' a' b'>16
                                    \revert Staff.Stem.stemlet-length
                                    <c' df' b'>16
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <c' df' b'>32
                                        [
                                        <c' df' a' b'>16.
                                        <c' df' b'>16.
                                        \revert Staff.Stem.stemlet-length
                                        <c' df' b'>16.
                                        ]
                                    }
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
                                    r2.
                                    r2.
                                    r2.
                                    <<
                                        \context Voice = "percussion 2 voice temp 1"
                                        {
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceTwo
                                            f8
                                            \p
                                            [
                                            \glissando
                                            \sustainOn
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            ]
                                            \glissando
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f8
                                            [
                                            \glissando
                                            \revert Staff.Stem.stemlet-length
                                            f'''8
                                            \sustainOff
                                            ]
                                        }
                                        \context Voice = "vibraphone muting voice"
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \voiceOne
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                ~
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% }
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 30% }
                                            \startTextSpanTwo
                                            - \tweak padding #8
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor ON } \hspace #0.5 }
                                            \startTextSpan
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                \stopTextSpan
                                                \stopTextSpanTwo
                                                ~
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'32
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                            }
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                - \tweak padding #8
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor ON } \hspace #0.5 }
                                                \startTextSpan
                                                ~
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \stopTextSpan
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'32
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% }
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                - \tweak padding #11
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 30% }
                                                \startTextSpanTwo
                                                - \tweak padding #8
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor ON } \hspace #0.5 }
                                                \startTextSpan
                                                ~
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'32
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'32
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \stopTextSpan
                                                \stopTextSpanTwo
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% }
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'32
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                - \tweak padding #11
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 100% } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor 30% }
                                                \startTextSpanTwo
                                                - \tweak padding #8
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Motor ON } \hspace #0.5 }
                                                \startTextSpan
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16.
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            ~
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'32
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \stopTextSpan
                                                \stopTextSpanTwo
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16.
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
                            r2.
                            r2.
                            r2.
                            r16
                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \context Score = "Score"
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \context RhythmicStaff = "Rhythmic_Staff"
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'4.
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                \once \override Beam.grow-direction = #left
                                \tweak style #'harmonic
                                ef'''64 * 15/16
                                \pp
                                  %! rmakers.beam()
                                [
                                (
                                - \tweak padding #12.5
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Rasg. } \hspace #0.5 }
                                \startTextSpanTwo
                                - \tweak padding #16
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {16} #1.75 } } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup {}
                                \startTextSpanOne
                                - \tweak padding #9
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { SP } \hspace #0.5 }
                                \startTextSpanThree
                                \tweak style #'harmonic
                                b''64 * 15/16
                                \tweak style #'harmonic
                                a''64 * 1
                                \tweak style #'harmonic
                                ef''64 * 17/16
                                \tweak style #'harmonic
                                a''64 * 19/16
                                \tweak style #'harmonic
                                b''64 * 21/16
                                \tweak style #'harmonic
                                ef'''64 * 3/2
                                \tweak style #'harmonic
                                b''64 * 27/16
                                \tweak style #'harmonic
                                a''64 * 2
                                \stopTextSpanThree
                                - \tweak padding #9
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { SP }
                                \startTextSpanThree
                                \tweak style #'harmonic
                                ef''64 * 39/16
                                \tweak style #'harmonic
                                a''64 * 23/8
                                \tweak style #'harmonic
                                b''64 * 27/8
                                \tweak style #'harmonic
                                ef'''64 * 59/16
                                )
                                \stopTextSpanOne
                                \stopTextSpanThree
                                  %! rmakers.beam()
                                ]
                            }
                            \revert TupletNumber.text
                            r16
                            r4
                            r16
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'harmonic
                            b''16
                            \stopTextSpanTwo
                            [
                            (
                            - \tweak padding #12.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Slow rasg. } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpanTwo
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                            \startTextSpanThree
                            \tweak style #'harmonic
                            a''16
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'harmonic
                            ef''16
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'harmonic
                            a''16
                            \stopTextSpanThree
                            [
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { SP } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST }
                            \startTextSpanThree
                            \tweak style #'harmonic
                            b''16
                            \tweak style #'harmonic
                            ef'''16
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'harmonic
                            b''16
                            )
                            \stopTextSpanThree
                            \stopTextSpanTwo
                            ]
                            r4
                            r2.
                            r2.
                            r2.
                            r2.
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
                            r2.
                            r2.
                            r2.
                            r4
                            r8
                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \context Score = "Score"
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \context RhythmicStaff = "Rhythmic_Staff"
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'4.
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                \ottava 1
                                \once \override Beam.grow-direction = #left
                                es''''64 * 15/16
                                \pp
                                  %! rmakers.beam()
                                [
                                (
                                - \tweak padding #10.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { w/ triangle beater between strings } \hspace #0.5 }
                                - \tweak bound-details.right.padding -3
                                \startTextSpan
                                - \tweak padding #14.5
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {16} #1.75 } } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup {}
                                \startTextSpanOne
                                f''''64 * 15/16
                                es''''64 * 1
                                f''''64 * 17/16
                                es''''64 * 19/16
                                f''''64 * 21/16
                                es''''64 * 3/2
                                f''''64 * 27/16
                                es''''64 * 2
                                f''''64 * 39/16
                                es''''64 * 23/8
                                f''''64 * 27/8
                                es''''64 * 59/16
                                )
                                \stopTextSpanOne
                                  %! rmakers.beam()
                                ]
                            }
                            \revert TupletNumber.text
                            r4
                            r8.
                            f''''16
                            (
                            \override Staff.Stem.stemlet-length = 0.75
                            es''''16
                            [
                            f''''16
                            es''''16
                            \revert Staff.Stem.stemlet-length
                            f''''16
                            )
                            \stopTextSpan
                            ]
                            \ottava 0
                            r2.
                            r2.
                            r2.
                            r2.
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
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    \ottava 2
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    - \accent
                                    - \stopped
                                    \p
                                    \unaCorda
                                    r8.
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    - \accent
                                    - \stopped
                                    r8.
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    - \accent
                                    - \stopped
                                    \treCorde
                                    \ottava 0
                                    r8.
                                    r4
                                    r8
                                    \times 4/5
                                    {
                                        r16.
                                        [
                                        \ottava 2
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16
                                        - \accent
                                        - \stopped
                                        ]
                                        \unaCorda
                                        ~
                                    }
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    r8.
                                    \times 4/5
                                    {
                                        r4
                                        <as'''' b'''' c'''''>16
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "fff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        ~
                                    }
                                    <as'''' b'''' c'''''>32
                                    [
                                    r16.
                                    r32
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16.
                                    - \accent
                                    - \stopped
                                    \p
                                    ]
                                    r4
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16.
                                    - \accent
                                    - \stopped
                                    [
                                    r32
                                    r16
                                    <as'''' b'''' c'''''>16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "fff"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        <as'''' b'''' c'''''>32
                                        [
                                        r16.
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16.
                                        - \accent
                                        - \stopped
                                        \p
                                        r16.
                                        ]
                                    }
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16.
                                    - \accent
                                    - \stopped
                                    [
                                    r32
                                    r16
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    - \accent
                                    - \stopped
                                    ]
                                    ~
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >32
                                        [
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16.
                                        - \accent
                                        - \stopped
                                        <as'''' b'''' c'''''>16.
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "fff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16.
                                        - \accent
                                        - \stopped
                                        \p
                                        ]
                                    }
                                    r16.
                                    [
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >32
                                    - \accent
                                    - \stopped
                                    ~
                                    <
                                        \tweak style #'cross
                                        as''''
                                        \tweak style #'cross
                                        b''''
                                        \tweak style #'cross
                                        c'''''
                                    >16
                                    r16
                                    ]
                                    \times 4/5
                                    {
                                        r32
                                        [
                                        <as'''' b'''' c'''''>16.
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "fff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16.
                                        - \accent
                                        - \stopped
                                        \p
                                        <
                                            \tweak style #'cross
                                            as''''
                                            \tweak style #'cross
                                            b''''
                                            \tweak style #'cross
                                            c'''''
                                        >16.
                                        - \accent
                                        - \stopped
                                        \treCorde
                                        ]
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
                                    \clef "bass"
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    \times 4/5
                                    {
                                        r4
                                        \ottava -1
                                        <ef,, b,,>16
                                        \sustainOn
                                    }
                                    \afterGrace
                                    r2
                                    \ottava 0
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \sustainOff
                                    }
                                    r2.
                                    r2.
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
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2
                                    r32
                                    [
                                    \vibrato #'(5 4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''32
                                    \pp
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r16
                                    \vibrato #'(4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''16
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r32
                                    \vibrato #'(1 ) #1  #0.2
                                    \afterGrace
                                    ef'''32
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    r16
                                    [
                                    \vibrato #'(2 3 ) #3  #0.2
                                    \afterGrace
                                    ef'''8.
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        <a'! aqs'!>8.
                                        \f
                                        ]
                                        - \tweak padding #9.75
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Senza vib. } \hspace #0.5 }
                                        \startTextSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        <a'! aqs'!>8.
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        \afterGrace
                                        <a'! aqs'!>8.
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
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        \vibrato #'(5 4 2 4 ) #4  #0.2
                                        \afterGrace
                                        ef'''8.
                                        \p
                                        ]
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \vibrato #'(2 1 ) #1  #0.2
                                        \afterGrace
                                        ef'''8
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        \vibrato #'(2 3 5 4 ) #4  #0.2
                                        \afterGrace
                                        ef'''8
                                        ]
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    r16
                                    [
                                    \vibrato #'(2 4 2 1 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''8
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \vibrato #'(3 5 4 ) #4  #0.2
                                        \afterGrace
                                        ef'''8
                                        ]
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                        }
                                    }
                                    r16
                                    [
                                    \vibrato #'(2 4 ) #4  #0.2
                                    \afterGrace
                                    ef'''8
                                    ]
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
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
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r4
                                    \clef "alto"
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \one-eighth-flat-markup
                                        af'!
                                        a'!
                                    >2
                                    \f
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Senza vib. } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    \afterGrace
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \one-eighth-flat-markup
                                        af'
                                        a'
                                    >2
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        ^ \stop-on-string
                                        \stopTextSpan
                                    }
                                    r4
                                    r2.
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \override Dots.staff-position = #2
                                    \override Accidental.stencil = ##f
                                    \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \bow-clef
                                    \override Glissando.bound-details.left.padding = #0.5
                                    \override Glissando.bound-details.right.padding = #0.5
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \staff-line-count 3
                                    \override Staff.StaffSymbol.line-positions = #'(9 0 -9)
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bowing the side of the bridge } \hspace #0.5 }
                                    \startTextSpan
                                    a''16
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
                                    a''32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    b16.
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16.
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''32
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
                                    a''16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    b16
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    a''16
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16.
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b32
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
                                    b16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    a''32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16
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
                                    b32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    a''16.
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        b16
                                        \stopTextSpan
                                        \revert Accidental.stencil
                                        \revert Staff.Clef.stencil
                                        \revert Glissando.bound-details.left.padding
                                        \revert Glissando.bound-details.right.padding
                                        \revert Staff.NoteHead.no-ledgers
                                        \revert Staff.StaffSymbol.line-positions
                                    }
                                    \staff-line-count 5
                                    r2.
                                    \revert Staff.BarLine.bar-extent
                                    \staff-line-count 1
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    r16
                                    [
                                    \tweak style #'cross
                                    c'16
                                    \p
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { CLB on side of bridge } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r8
                                    ]
                                    r16
                                    [
                                    \tweak style #'cross
                                    c'16
                                    r8
                                    ]
                                    r16
                                    [
                                    \tweak style #'cross
                                    c'16
                                    \stopTextSpan
                                    r8
                                    ]
                                    r2.
                                    r4
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "bass"
                                    <c, a,>2
                                    \fff
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { III + IV } \line { Senza vib. }  } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    ~
                                    \afterGrace
                                    <c, a,>2
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        _ \stop-on-string
                                        \stopTextSpan
                                    }
                                    r4
                                    r2.
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \override Dots.staff-position = #2
                                    \override Accidental.stencil = ##f
                                    \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \bow-clef
                                    \override Glissando.bound-details.left.padding = #0.5
                                    \override Glissando.bound-details.right.padding = #0.5
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \staff-line-count 3
                                    \override Staff.StaffSymbol.line-positions = #'(9 0 -9)
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16.
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Bowing the side of the bridge } \hspace #0.5 }
                                    \startTextSpan
                                    a''32
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
                                    a''16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    b16
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b32
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
                                    b16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    a''16
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''32
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
                                    a''32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    b16.
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16.
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b32
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
                                    b32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    a''32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16
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
                                    b32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
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
                                    a''32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    a''32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b32
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b32
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
                                    b32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    a''16.
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        b16
                                        \stopTextSpan
                                        \revert Accidental.stencil
                                        \revert Staff.Clef.stencil
                                        \revert Glissando.bound-details.left.padding
                                        \revert Glissando.bound-details.right.padding
                                        \revert Staff.NoteHead.no-ledgers
                                        \revert Staff.StaffSymbol.line-positions
                                    }
                                    \staff-line-count 5
                                    r2.
                                    \revert Staff.BarLine.bar-extent
                                    \staff-line-count 1
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'16
                                    \p
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { CLB on side of bridge } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16
                                    ]
                                    r8.
                                    [
                                    \tweak style #'cross
                                    c'16
                                    ]
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'16
                                    \stopTextSpan
                                    r16
                                    ]
                                    r2.
                                    r4
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "bass"
                                    <e, b,>2
                                    \fff
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { III + IV } \line { Senza vib. }  } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    ~
                                    \afterGrace
                                    <e, b,>2
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        _ \stop-on-string
                                        \stopTextSpan
                                    }
                                    r4
                                    r2.
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
