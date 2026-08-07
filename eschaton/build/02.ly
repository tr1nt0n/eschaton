    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 1/8
            s1 * 1/8
              %! +SCORE
            - \tweak padding #14
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            s1 * 1/8
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
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    c'32
                                    r32
                                    c'32
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16.
                                    c'16.
                                    r16.
                                    c'16.
                                    r8
                                    c'8
                                    r8
                                    r32
                                    c'8
                                    ~
                                    c'32
                                    r8
                                    r32
                                    c'8
                                    ~
                                    c'32
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bari. Sax. }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    c'8
                                    ~
                                    c'32
                                    c'8
                                    ~
                                    c'32
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
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. I }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    r8
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
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Guit. }
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
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
                            c'16.
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
                            r8
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
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Hp. }
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
                            r8
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
                            r8
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
                            c'32
                            c'32.
                            r8
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
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vn. }
                                    r32
                                    c'32
                                    r32
                                    c'32
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16.
                                    c'16.
                                    r16.
                                    c'16.
                                    r8
                                    c'8
                                    r8
                                    r32
                                    c'8
                                    ~
                                    c'32
                                    r8
                                    r32
                                    c'8
                                    ~
                                    c'32
                                    r8
                                    r8
                                    c'8
                                    c'4
                                    ~
                                    c'16
                                    c'4
                                    ~
                                    c'16
                                    c'2
                                    c'4
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    c'8
                                    c'4
                                    ~
                                    c'16
                                    c'4..
                                    c'4
                                    ~
                                    c'16
                                    c'4
                                    ~
                                    c'16
                                    c'4
                                    r8
                                    r8
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    c'2
                                    c'4
                                    c'8
                                    c'8
                                    c'4
                                    c'4.
                                    c'4
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    c'4
                                    ~
                                    c'16
                                    c'4
                                    ~
                                    c'16
                                    c'4.
                                    c'4
                                    c'4
                                    c'4.
                                    c'4.
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
