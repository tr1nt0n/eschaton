    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/8
            s1 * 1/2
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
            \time 3/8
            s1 * 3/8
            \time 4/8
            s1 * 1/2
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
            \time 3/8
            s1 * 3/8
            \time 7/16
            s1 * 7/16
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/16
            s1 * 7/16
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
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
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Fl. }
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
                                    \override TupletNumber.text = \markup { 3:2 }
                                    \times 2/3
                                    {
                                        r8
                                        c'8
                                        c'8
                                    }
                                    \revert TupletNumber.text
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                        \revert TupletNumber.text
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Ob. }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                        c'16.
                                        c'16.
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 4/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            c'16
                                            c'16
                                            c'16
                                        }
                                        \revert TupletNumber.text
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. I }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Guit. }
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
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Hp. }
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vn. }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            c'16
                                            c'16
                                            c'16
                                        }
                                        \revert TupletNumber.text
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                        \revert TupletNumber.text
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
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
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
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 5/6
                                        {
                                            r16
                                            c'16
                                            c'16
                                        }
                                        \revert TupletNumber.text
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
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                        c'16
                                        ~
                                        c'64
                                        c'16
                                        ~
                                        c'64
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 2/3
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        c'8
                                        c'8
                                        ~
                                        c'32
                                        c'8
                                        ~
                                        c'32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        c'8
                                        ~
                                        c'32
                                        r8
                                        r32
                                        c'8
                                    }
                                    c'32.
                                    c'32.
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        c'16
                                        c'16.
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        c'16.
                                        c'32
                                        c'32
                                        c'32
                                        c'16
                                    }
                                    c'16
                                    c'16
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        c'8
                                        c'8
                                        r8
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        c'8
                                        r8
                                    }
                                    c'8
                                    ~
                                    c'8
                                    c'8
                                    ~
                                    c'8
                                    r4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 14/12
                                    {
                                        c'8
                                        ~
                                        c'32
                                        c'16..
                                        \override TupletNumber.text = \markup { 3:2 }
                                        \times 7/6
                                        {
                                            r32
                                            c'32
                                            c'32
                                        }
                                        \revert TupletNumber.text
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
