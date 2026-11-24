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
            \time 4/8
            s1 * 1/2
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \time 3/8
            s1 * 3/8
            \time 4/8
            s1 * 1/2
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \time 3/8
            s1 * 3/8
            \time 7/16
            s1 * 7/16
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/16
            s1 * 7/16
            \time 5/8
            s1 * 5/8
              %! +SCORE
            - \tweak padding #18
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
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
                                    \times 4/5
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Flute }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Fl. }
                                        c'16.
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        r32
                                        c'32
                                        c'32
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'16
                                        c'16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'8
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        c'4
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        c'8.
                                        c'4
                                    }
                                    c'8
                                    ~
                                    c'16
                                    c'16
                                    ~
                                    c'8
                                    \times 2/3
                                    {
                                        r8
                                        c'8
                                        c'8
                                    }
                                    \times 8/11
                                    {
                                        c'8
                                        c'8
                                        c'16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/11
                                    {
                                        c'8
                                        r8
                                        c'16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/11
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'8
                                        c'8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'16..
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'4
                                        ~
                                        c'16
                                        r8..
                                        c'8..
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
                                    r2
                                    r4.
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'8..
                                        r8..
                                        c'4
                                        ~
                                        c'16
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Bass Clarinet }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                        c'16.
                                        c'16.
                                        \times 2/3
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        c'16.
                                        c'16
                                        c'16.
                                    }
                                    c'32
                                    r32.
                                    c'32.
                                    \times 8/11
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32.
                                    }
                                    \times 8/11
                                    {
                                        r32
                                        c'32
                                        c'32
                                        c'32.
                                        c'32
                                    }
                                    \times 8/11
                                    {
                                        c'32.
                                        c'32
                                        r32
                                        c'32
                                        c'32
                                    }
                                    c'8
                                    c'8
                                    ~
                                    c'16
                                    c'16
                                    ~
                                    c'8
                                    c'16.
                                    c'32
                                    ~
                                    c'16
                                    r32
                                    c'32
                                    c'32
                                    c'16.
                                    c'8
                                    c'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'16.
                                        r16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \times 2/3
                                        {
                                            c'16
                                            c'16
                                            c'16
                                        }
                                        c'8
                                        c'8.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r8
                                        c'8.
                                        c'8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'8..
                                        r8..
                                        c'4
                                        ~
                                        c'16
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
                                    c'16
                                    c'16
                                    r8
                                    c'16
                                    ~
                                    c'64
                                    c'32.
                                    ~
                                    c'32
                                    r16.
                                    r16
                                    c'16
                                    ~
                                    c'64
                                    c'64
                                    ~
                                    c'16
                                    r32
                                    r8
                                    c'32
                                    c'32
                                    r16
                                    c'32.
                                    c'32.
                                    r32
                                    r16
                                    c'32.
                                    c'64
                                    ~
                                    c'32
                                    r16.
                                    c'16.
                                    c'32
                                    ~
                                    c'16
                                    r16
                                    r8
                                    c'16
                                    c'16
                                    r8
                                    c'8
                                    ~
                                    c'32
                                    c'16.
                                    ~
                                    c'16
                                    r16
                                    r4
                                    c'16.
                                    c'32
                                    ~
                                    c'16
                                    r16
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'8..
                                        r4
                                        r16
                                        c'8..
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
                                    c'16
                                    r16
                                    r16
                                    c'16
                                    r8
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    r16
                                    c'16
                                    r8
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'8..
                                        r4
                                        r16
                                        c'8..
                                    }
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
                            r4.
                            r2
                            r4.
                            r4
                            r4.
                            r4
                            r4.
                            r4..
                            r4..
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
                            r2
                            r4.
                            r2
                            r4.
                            r4
                            r4.
                            r4
                            r4.
                            r4..
                            r4..
                            r4.
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
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    r16
                                    c'16
                                    r8
                                    c'16
                                    r16
                                    r8
                                    c'16
                                    r16
                                    r8
                                    r16
                                    c'16
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    r4..
                                    r4..
                                    r4.
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
                                    r2
                                    r4.
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    r4..
                                    r4..
                                    r4.
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
                                    c'32.
                                    c'32.
                                    r32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {
                                        c'16
                                        c'16
                                    }
                                    r32.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {
                                        c'16
                                        c'16
                                    }
                                    r32.
                                    c'16.
                                    c'32
                                    ~
                                    c'16
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        c'16.
                                        c'16.
                                        r16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        c'16.
                                        c'16.
                                        r16
                                    }
                                    c'32.
                                    c'32.
                                    r32
                                    r16
                                    c'16
                                    ~
                                    c'32.
                                    c'64
                                    ~
                                    c'16
                                    ~
                                    c'32
                                    r16.
                                    r8
                                    c'16
                                    c'16
                                    r8
                                    c'8
                                    ~
                                    c'16
                                    c'16
                                    ~
                                    c'8
                                    r4.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'8..
                                        r8..
                                        c'4
                                        ~
                                        c'16
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
                                    c'16
                                    r16
                                    r8
                                    c'16
                                    r16
                                    r8
                                    r16
                                    c'16
                                    r4
                                    c'16
                                    r16
                                    c'16
                                    r16
                                    r16
                                    c'16
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32.
                                        c'32.
                                        \times 2/3
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32.
                                        c'16
                                        c'32.
                                    }
                                    \times 4/5
                                    {
                                        c'8
                                        r16.
                                        c'16.
                                    }
                                    \times 4/5
                                    {
                                        \times 2/3
                                        {
                                            c'16
                                            c'16
                                            c'16
                                        }
                                        c'8.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'8.
                                        r8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'8.
                                        c'8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'16..
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'4
                                        ~
                                        c'16
                                        r8..
                                        c'8..
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
                                    c'16
                                    c'16
                                    r16
                                    c'16
                                    c'16
                                    r16
                                    \times 2/3
                                    {
                                        c'16
                                        c'16
                                        r16
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'16
                                        r16
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'16
                                        r16
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'16
                                        r16
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        c'16
                                        r16
                                    }
                                    c'16
                                    c'16
                                    r16
                                    c'16
                                    c'16
                                    r16
                                    c'8
                                    c'8
                                    r8
                                    \times 2/3
                                    {
                                        c'8
                                        c'8
                                        r8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'4
                                        c'4
                                        r4
                                    }
                                    c'8
                                    c'8
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'16..
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'16..
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        c'4
                                        ~
                                        c'16
                                        r8..
                                        c'8..
                                    }
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \big-half-harmonic
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                        \clef "bass"
                                        gqs16
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        [
                                        - \tweak padding #7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        ~
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 2
                                        gqs64
                                        \big-half-harmonic
                                        b16
                                        ^ \punta-to-talon
                                        ^ (
                                        ~
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 4
                                        \set stemRightBeamCount = 1
                                        b64
                                        \times 2/3
                                        {
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            r32
                                            \big-half-harmonic
                                            fqs32
                                            \big-half-harmonic
                                            cs32
                                            )
                                            \stopTextSpan
                                            ]
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        fs,8
                                        - \accent
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        \mf
                                        [
                                        - \tweak padding #11.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { IV } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        b,8
                                        - \accent
                                        ^ \punta-to-talon
                                        ~
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        b,32
                                        g,8
                                        - \accent
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        ~
                                        g,32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        bqs,8
                                        - \accent
                                        ^ \punta-to-talon
                                        ~
                                        bqs,32
                                        \stopTextSpanOne
                                        ]
                                        r8
                                        r32
                                        \big-half-harmonic
                                        aqf8
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        \pp
                                        [
                                        - \tweak padding #11.25
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpanTwo
                                    }
                                    \big-half-harmonic
                                    bf32.
                                    ^ \punta-to-talon
                                    ^ (
                                    \big-half-harmonic
                                    af32.
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    a32
                                    )
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        bf16
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        ^ (
                                        \big-half-harmonic
                                        aqf16.
                                        )
                                        ]
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        \big-half-harmonic
                                        af16.
                                        ^ \punta-to-talon
                                        [
                                        ^ (
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 2
                                        bqf32
                                        )
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 3
                                        bqf32
                                        - \tweak padding #0.75
                                        ^ \talon-to-punta
                                        \stopTextSpanTwo
                                        - \tweak padding #11.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        ^ (
                                        \big-half-harmonic
                                        aqf32
                                        \big-half-harmonic
                                        cqs'16
                                        )
                                        \stopTextSpanTwo
                                        ]
                                    }
                                    <<
                                        \context Voice = "ricochet 1 lower voice"
                                        {
                                            \override Dots.staff-position = #2
                                            \override Voice.TupletBracket.direction = #UP
                                            \voiceTwo
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                eqs,
                                                \tweak style #'harmonic
                                                f,
                                            >16
                                            ^ \markup 0
                                            [
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \afterGrace
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                fs,
                                                \tweak style #'harmonic
                                                g,
                                            >16
                                            ^ \markup 1
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                \revert Dots.staff-position
                                                \once \override Flag.stroke-style = #"grace"
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    eqs,
                                                    \tweak style #'harmonic
                                                    f,
                                                >16
                                                )
                                            }
                                            r16
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \override Dots.staff-position = #2
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    eqs,
                                                    \tweak style #'harmonic
                                                    f,
                                                >8
                                                ^ \markup 2
                                                [
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \afterGrace
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    fs,
                                                    \tweak style #'harmonic
                                                    g,
                                                >8
                                                ^ \markup 3
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        eqs,
                                                        \tweak style #'harmonic
                                                        f,
                                                    >16
                                                    )
                                                }
                                                r8
                                            }
                                            \times 2/3
                                            {
                                                \override Dots.staff-position = #2
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    fs,
                                                    \tweak style #'harmonic
                                                    g,
                                                >8
                                                ^ \markup 4
                                                [
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \afterGrace
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    b,
                                                    \tweak style #'harmonic
                                                    cqs
                                                >8
                                                ^ \markup 5
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        fs,
                                                        \tweak style #'harmonic
                                                        g,
                                                    >16
                                                    )
                                                }
                                                r8
                                            }
                                            \override Dots.staff-position = #2
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                fs,
                                                \tweak style #'harmonic
                                                g,
                                            >8
                                            ^ \markup 6
                                            (
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
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                fs,
                                                \tweak style #'harmonic
                                                g,
                                            >8
                                            [
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                b,
                                                \tweak style #'harmonic
                                                cqs
                                            >8
                                            ^ \markup 7
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
                                            \afterGrace
                                            <
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                b,
                                                \tweak style #'harmonic
                                                cqs
                                            >8
                                            {
                                                \revert Dots.staff-position
                                                \once \override Flag.stroke-style = #"grace"
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    fs,
                                                    \tweak style #'harmonic
                                                    g,
                                                >16
                                                )
                                            }
                                            r4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
                                            {
                                                \override Dots.staff-position = #2
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    g,
                                                    \tweak style #'harmonic
                                                    aqf,
                                                >8
                                                ^ \markup 8
                                                [
                                                (
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
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    g,
                                                    \tweak style #'harmonic
                                                    aqf,
                                                >32
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \afterGrace
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    a,
                                                    \tweak style #'harmonic
                                                    bf,
                                                >16..
                                                ^ \markup 9
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        dqs
                                                        \tweak style #'harmonic
                                                        e
                                                    >16
                                                    )
                                                }
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 7/6
                                                {
                                                    r32
                                                    \override Dots.staff-position = #2
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        e
                                                        \tweak style #'harmonic
                                                        fqs
                                                    >32
                                                    ^ \markup 10
                                                    (
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        fs
                                                        \tweak style #'harmonic
                                                        gs
                                                    >32
                                                    ^ \markup 11
                                                    ]
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                }
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
                                            {
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    eqs
                                                    \tweak style #'harmonic
                                                    fs
                                                >16..
                                                ^ \markup 12
                                                [
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    gs
                                                    \tweak style #'harmonic
                                                    a
                                                >16..
                                                ^ \markup 13
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    fs
                                                    \tweak style #'harmonic
                                                    g
                                                >8
                                                ^ \markup 14
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
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    fs
                                                    \tweak style #'harmonic
                                                    g
                                                >32
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \afterGrace
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    bqf
                                                    \tweak style #'harmonic
                                                    c'
                                                >8..
                                                ^ \markup 15
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        a
                                                        \tweak style #'harmonic
                                                        bqf
                                                    >16
                                                    )
                                                }
                                                r4
                                                r16
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                <
                                                    \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                    \tweak Accidental.font-size #-2.5
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-2.5
                                                    \tweak style #'harmonic
                                                    cqs'
                                                    \tweak style #'harmonic
                                                    d'
                                                >8..
                                                ^ \markup 16
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    <
                                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                        \tweak Accidental.font-size #-2.5
                                                        \tweak color #(x11-color 'LightSlateBlue)
                                                        \tweak font-size #-2.5
                                                        \tweak style #'harmonic
                                                        fs'
                                                        \tweak style #'harmonic
                                                        g'
                                                    >16
                                                    )
                                                    \revert Voice.TupletBracket.direction
                                                }
                                            }
                                        }
                                        \context Voice = "ricochet 1 upper voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 1/1
                                            {
                                                \my-hack-slash
                                                \override Voice.TupletNumber.stencil = ##f
                                                \override Voice.TupletBracket.stencil = ##f
                                                \voiceOne
                                                \once \override Beam.grow-direction = #right
                                                c'64 * 15/8
                                                [
                                                c'64 * 21/16
                                                c'64 * 13/16
                                                ]
                                            }
                                            c'16
                                            r16
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                    \my-hack-slash
                                                    \once \override Beam.grow-direction = #right
                                                    c'64 * 15/4
                                                    [
                                                    c'64 * 21/8
                                                    c'64 * 13/8
                                                    ]
                                                }
                                                c'8
                                                r8
                                            }
                                            \times 2/3
                                            {
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                    \my-hack-slash
                                                    \once \override Beam.grow-direction = #right
                                                    c'64 * 15/4
                                                    [
                                                    c'64 * 21/8
                                                    c'64 * 13/8
                                                    ]
                                                }
                                                c'8
                                                r8
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 1/1
                                            {
                                                \my-hack-slash
                                                \once \override Beam.grow-direction = #right
                                                c'64 * 15/2
                                                [
                                                c'64 * 21/4
                                                c'64 * 13/4
                                                ]
                                            }
                                            c'8
                                            ~
                                            c'8
                                            r4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
                                            {
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                    \my-hack-slash
                                                    \once \override Beam.grow-direction = #right
                                                    c'64 * 1
                                                    [
                                                    c'64 * 15/16
                                                    c'64 * 15/16
                                                    c'64 * 7/8
                                                    c'64 * 13/16
                                                    c'64 * 11/16
                                                    c'64 * 5/8
                                                    c'64 * 9/16
                                                    c'64 * 9/16
                                                    c'64 * 1/2
                                                    c'64 * 7/16
                                                    c'64 * 7/16
                                                    c'64 * 7/16
                                                    c'64 * 3/8
                                                    c'64 * 3/8
                                                    c'64 * 7/16
                                                    ]
                                                }
                                                c'16..
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 7/6
                                                {
                                                    r32
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 1/1
                                                    {
                                                        \my-hack-slash
                                                        \once \override Beam.grow-direction = #right
                                                        c'64 * 15/16
                                                        [
                                                        c'64 * 11/16
                                                        c'64 * 3/8
                                                        ]
                                                    }
                                                    c'32
                                                }
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
                                            {
                                                c'16..
                                                c'16..
                                                c'8
                                                ~
                                                c'32
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                c'8..
                                                r4
                                                r16
                                                \tweak text #tuplet-number::calc-fraction-text
                                                \times 1/1
                                                {
                                                    \my-hack-slash
                                                    \once \override Beam.grow-direction = #right
                                                    c'64 * 1
                                                    [
                                                    c'64 * 1
                                                    c'64 * 15/16
                                                    c'64 * 15/16
                                                    c'64 * 7/8
                                                    c'64 * 13/16
                                                    c'64 * 13/16
                                                    c'64 * 3/4
                                                    c'64 * 11/16
                                                    c'64 * 5/8
                                                    c'64 * 5/8
                                                    c'64 * 9/16
                                                    c'64 * 1/2
                                                    c'64 * 1/2
                                                    c'64 * 1/2
                                                    c'64 * 7/16
                                                    c'64 * 7/16
                                                    c'64 * 7/16
                                                    c'64 * 7/16
                                                    c'64 * 3/8
                                                    c'64 * 3/8
                                                    c'64 * 3/8
                                                    ]
                                                }
                                            }
                                        }
                                    >>
                                    \oneVoice
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
