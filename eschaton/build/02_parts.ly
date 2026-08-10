    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 25 16 27)))
            \time 4/8
            s1 * 1/2
            - \tweak padding 17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { II. There is only dance music in times of war. }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-0.5 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 40" } } }
            \noBreak
            \noPageBreak
            \time 5/8
            s1 * 5/8
            \break
            \noPageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \noBreak
            \noPageBreak
            \time 2/8
            s1 * 1/4
            \pageBreak
            \time 4/4
            s1 * 1
            \pageBreak
            \time 4/8
            s1 * 1/2
            \noBreak
            \noPageBreak
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
                                    \vibrato #'(4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''32
                                    \ppp
                                    \<
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
                                    \vibrato #'(1 2 3 5 ) #5  #0.2
                                    \afterGrace
                                    ef'''32
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
                                    \vibrato #'(4 2 4 2 1 ) #1  #0.2
                                    \afterGrace
                                    ef'''16
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
                                    \vibrato #'(2 3 5 ) #5  #0.2
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
                                    r16
                                    \vibrato #'(4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''16
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
                                    r16.
                                    [
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    \vibrato #'(4 ) #4  #0.2
                                    ef'''32
                                    ~
                                    \startTrillSpan
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \afterGrace
                                    ef'''16
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    \vibrato #'(2 1 ) #1  #0.2
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
                                    r8
                                    [
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
                                    r8
                                    [
                                    r32
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \vibrato #'(2 4 ) #4  #0.2
                                    ef'''16.
                                    ~
                                    \startTrillSpan
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \afterGrace
                                    ef'''16
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
                                    ]
                                    r16.
                                    [
                                    \vibrato #'(2 1 2 3 ) #3  #0.2
                                    ef'''32
                                    ~
                                    \startTrillSpan
                                    \afterGrace
                                    ef'''8
                                    ]
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
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
                                    aqs'8
                                    \p
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    _ \markup { \hspace #1.5 { "legatissimo" } }
                                    [
                                    (
                                    ~
                                    aqs'32
                                    af'16.
                                    ]
                                    ~
                                    af'16
                                    )
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        r16
                                        a'16
                                        (
                                        g'16
                                        b'8.
                                        )
                                    }
                                    gqf'8
                                    ]
                                    (
                                    a'8
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        aqf'16
                                        )
                                        r32.
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        dqs''32.
                                        (
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 4
                                        gqf''64
                                        eqs''64
                                        af''64
                                        dqs'''32.
                                        bf''16
                                        )
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        [
                                        ef''16.
                                        (
                                        af''8
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        e''16
                                        [
                                        (
                                        aqf''64
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 1
                                        fqs''64
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 4
                                        g''64
                                        )
                                        r64
                                        f''16
                                        ]
                                        (
                                    }
                                    \times 2/3
                                    {
                                        fs''32
                                        [
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        g''32
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            fqs''16
                                            f''16
                                            gqs''16
                                            )
                                            ]
                                        }
                                        \revert TupletNumber.text
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
                                    \staff-line-count 1
                                      %! +SCORE
                                %%% \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    - \accent
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
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Newspaper }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    - \accent
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
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
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
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    - \accent
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
                                    c'8.
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
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
                                    ]
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
                                    \staff-line-count 1
                                      %! +SCORE
                                %%% \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Grass bundle }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \accent
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
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    - \accent
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
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
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
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
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
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    c'8.
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \accent
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
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
                            \p
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            _ \markup { \hspace #1.5 { "legatissimo" } }
                            (
                            - \tweak padding #6
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            fs4
                            ~
                            fs16
                            )
                            [
                            \override TupletNumber.text = \markup { 6:5 }
                            \times 5/6
                            {
                                r8
                                bf8
                                (
                                af8
                                ]
                            }
                            \revert TupletNumber.text
                            b16
                            [
                            fs16
                            ]
                            cs'16.
                            [
                            fs'32
                            ~
                            fs'16
                            )
                            r16
                            ]
                            r32
                            [
                            b'16.
                            ]
                            (
                            g''32.
                            [
                            c'''32.
                            a''32
                            ]
                            bf''32.
                            [
                            af''32.
                            )
                            r32
                            ]
                            a''32
                            [
                            (
                            bf''32.
                            a''32.
                            )
                            \stopTextSpan
                            ]
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
                            ^ \markup { \harp-pedal "-v-|^v-^" }
                            \times 2/3
                            {
                                \ottava -1
                                \clef "bass"
                                ef,,8
                                \p
                                - \tweak font-name "Bodoni72 Book Italic" 
                                - \tweak font-size 0
                                _ \markup { \hspace #1 { "legatissimo" } }
                                [
                                (
                                - \tweak padding #10.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { With nails, very close to the neck } \hspace #0.5 }
                                - \tweak bound-details.right.padding -2.5
                                \startTextSpan
                                cs,,8
                                )
                                \override TupletNumber.text = \markup { 3:2 }
                                \times 2/3
                                {
                                    r16
                                    d,,16
                                    (
                                    cs,,16
                                    ]
                                }
                                \revert TupletNumber.text
                            }
                            \times 2/3
                            {
                                ef,,8
                                [
                                \ottava 0
                                b,,8
                                cs,8
                                ]
                            }
                            \times 2/3
                            {
                                b,8
                                )
                                [
                                r8
                                ef8
                                ]
                                (
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                cs32
                                [
                                \clef "treble"
                                b32
                                cs'32
                                b'16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                d''16.
                                )
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            r32.
                            af'64
                            ]
                            (
                            ~
                            af'64
                            [
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            cs''32.
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                b''16
                                fs''32
                                af''32
                                g''32
                                )
                                r16.
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                \ottava 1
                                b''16
                                [
                                (
                                fs'''16.
                                cs''''16.
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {
                                fs'''16.
                                [
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                b'''16.
                                \override TupletNumber.text = \markup { 3:2 }
                                \times 4/6
                                {
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    g''''32
                                    )
                                    r32
                                    b'''32
                                    ]
                                    (
                                }
                                \revert TupletNumber.text
                            }
                            af'''32.
                            [
                            \set stemLeftBeamCount = 4
                            \set stemRightBeamCount = 1
                            b'''64
                            ~
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 4
                            b'''64
                            af'''32.
                            )
                            \stopTextSpan
                            ]
                            \ottava 0
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
                                    \vibrato #'(5 4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''32
                                    \ppp
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Flaut. moltiss. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2.5
                                    \startTextSpan
                                    \<
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
                                    \vibrato #'(4 2 ) #2  #0.2
                                    \afterGrace
                                    ef'''32
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
                                    \vibrato #'(1 ) #1  #0.2
                                    \afterGrace
                                    ef'''16
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
                                    r16
                                    \vibrato #'(5 4 2 4 ) #4  #0.2
                                    \afterGrace
                                    ef'''16
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
                                    r16.
                                    [
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    \vibrato #'(2 1 ) #1  #0.2
                                    ef'''32
                                    ~
                                    \startTrillSpan
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \afterGrace
                                    ef'''16
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTrillSpan
                                    }
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    r32
                                    \vibrato #'(2 3 5 4 ) #4  #0.2
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
                                    r8
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
                                    r8
                                    [
                                    r32
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \vibrato #'(3 5 4 ) #4  #0.2
                                    ef'''16.
                                    ~
                                    \startTrillSpan
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \afterGrace
                                    ef'''16
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
                                    ]
                                    r16.
                                    [
                                    \vibrato #'(2 4 ) #4  #0.2
                                    ef'''32
                                    ~
                                    \startTrillSpan
                                    \afterGrace
                                    ef'''8
                                    ]
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                        \stopTrillSpan
                                    }
                                    r4
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                %%% \revert Staff.BarLine.bar-extent
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    \mp
                                    [
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    <b d'>4
                                    <b d'>4
                                    - \tenuto
                                    - \twist-bow
                                    ~
                                    <b d'>4
                                    <b d'>4
                                    - \tenuto
                                    - \twist-bow
                                    \ppp
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
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                %%% \revert Staff.BarLine.bar-extent
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    \p
                                    [
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>16
                                    - \tenuto
                                    - \twist-bow
                                    \mp
                                    ]
                                    \>
                                    ~
                                    <b d'>4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    <b d'>4
                                    <b d'>4
                                    - \tenuto
                                    - \twist-bow
                                    \ppp
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
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                %%% \revert Staff.BarLine.bar-extent
                                    \clef "percussion"
                                    <b d'>4
                                    - \tenuto
                                    - \twist-bow
                                    \pp
                                    \<
                                    ~
                                    <b d'>4
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    \mp
                                    [
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b d'>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <b d'>8
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    ~
                                    <b d'>4
                                    <b d'>4
                                    - \tenuto
                                    - \twist-bow
                                    \ppp
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
                                    \staff-line-count 4
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \stringing-clef
                                      %! +SCORE
                                %%% \revert Staff.BarLine.bar-extent
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    \clef "percussion"
                                    f'2
                                    - \tweak bound-details.left.Y #11
                                    - \tweak bound-details.right.Y #3.5
                                    - \tweak padding #0
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #0 { \column { \line { Scratch } \line { Gradually pressing harder until } \line { the continuous scratch becomes disparate clicks, } \line { simultaneously incorporating gradually } \line { more twisting motion to the bowing. }  } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { ( Twist ) }
                                    \startTextSpanTwo
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { DP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    f'4
                                    - \tenuto
                                    - \twist-bow
                                    \pp
                                    \stopTextSpanTwo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    - \twist-bow
                                    ]
                                    \<
                                    ~
                                    f'4
                                    f'4.
                                    - \tenuto
                                    - \twist-bow
                                    f'4
                                    - \tenuto
                                    - \twist-bow
                                    f'4
                                    - \tenuto
                                    - \twist-bow
                                    \mp
                                    \>
                                    f'4
                                    - \tenuto
                                    - \twist-bow
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    - \twist-bow
                                    \ppp
                                    ]
                                    ~
                                    f'4
                                    \stopTextSpanOne
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
