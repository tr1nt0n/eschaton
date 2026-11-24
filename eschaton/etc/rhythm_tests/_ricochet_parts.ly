    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
              %! +SCORE
        %%% - \tweak padding #14
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
            \time 3/4
            s1 * 3/4
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "altoflute staff"
                {
                    \context Voice = "altoflute voice"
                    {
                        <<
                            \context Voice = "ricochet 1 lower voice"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/4
                                {
                                    \voiceTwo
                                    c'4
                                    c'4
                                    c'4
                                    c'4
                                }
                                c'8.
                                c'8.
                                c'8.
                                c'8.
                            }
                            \context Voice = "ricochet 1 upper voice"
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/4
                                {
                                    \voiceOne
                                    c'4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \my-hack-slash
                                        \once \override Beam.grow-direction = #right
                                        c'64 * 61/16
                                        [
                                        c'64 * 27/8
                                        c'64 * 39/16
                                        c'64 * 27/16
                                        c'64 * 5/4
                                        c'64 * 1
                                        c'64 * 7/8
                                        c'64 * 13/16
                                        c'64 * 3/4
                                        ]
                                    }
                                    c'4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \my-hack-slash
                                        \once \override Beam.grow-direction = #right
                                        c'64 * 61/16
                                        [
                                        c'64 * 27/8
                                        c'64 * 39/16
                                        c'64 * 27/16
                                        c'64 * 5/4
                                        c'64 * 1
                                        c'64 * 7/8
                                        c'64 * 13/16
                                        c'64 * 3/4
                                        ]
                                    }
                                }
                                c'8.
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 1/1
                                {
                                    \my-hack-slash
                                    \once \override Beam.grow-direction = #right
                                    c'64 * 63/16
                                    [
                                    c'64 * 51/16
                                    c'64 * 15/8
                                    c'64 * 5/4
                                    c'64 * 15/16
                                    c'64 * 13/16
                                    ]
                                }
                                c'8.
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 1/1
                                {
                                    \my-hack-slash
                                    \once \override Beam.grow-direction = #right
                                    c'64 * 63/16
                                    [
                                    c'64 * 51/16
                                    c'64 * 15/8
                                    c'64 * 5/4
                                    c'64 * 15/16
                                    c'64 * 13/16
                                    ]
                                }
                            }
                        >>
                        \oneVoice
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
            >>
            \context Staff = "guitar staff"
            {
                \context Voice = "guitar voice"
                {
                    r2.
                    r2
                    r2.
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    r2.
                    r2
                    r2.
                }
            }
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
            >>
            \context GrandStaff = "sub group 4"
            <<
                \context Staff = "violin staff"
                {
                    \context Voice = "violin voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        r2.
                        r2
                        r2.
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
