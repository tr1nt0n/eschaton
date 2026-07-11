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
            \time 2/8
            s1 * 1/4
              %! +SCORE
            - \tweak padding #14
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/8
            s1 * 1/4
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/8
            s1 * 7/8
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "altoflute staff"
                {
                    \context Voice = "altoflute voice"
                    {
                        c'4
                        - \tweak font-size 2
                        ^ \markup { "Meter 2, Attack Limit 1" }
                        c'8
                        - \tweak font-size 2
                        ^ \markup { "Meter 2, Attack Limit 1" }
                        c'8
                        c'16
                        - \tweak font-size 2
                        ^ \markup { "Meter 2, Attack Limit 3" }
                        c'8
                        c'16
                        c'16
                        c'16
                        c'8
                        c'8
                        c'16
                        c'16
                        c'16
                        - \tweak font-size 2
                        ^ \markup { "Meter 2, Attack Limit 4" }
                        c'16
                        c'16
                        c'16
                        c'4.
                        - \tweak font-size 2
                        ^ \markup { "Meter 3, Attack Limit 1" }
                        c'8.
                        - \tweak font-size 2
                        ^ \markup { "Meter 3, Attack Limit 2" }
                        c'8.
                        c'8
                        - \tweak font-size 2
                        ^ \markup { "Meter 3, Attack Limit 3" }
                        c'8
                        c'8
                        c'8
                        - \tweak font-size 2
                        ^ \markup { "Meter 3, Attack Limit 4" }
                        c'16
                        c'8
                        c'16
                        c'8
                        c'16
                        c'16
                        c'8
                        c'8
                        c'8
                        c'16
                        c'16
                        c'16
                        c'8
                        c'8
                        c'16
                        c'2
                        - \tweak font-size 2
                        ^ \markup { "Meter 4, Attack Limit 1" }
                        c'4
                        - \tweak font-size 2
                        ^ \markup { "Meter 4, Attack Limit 2" }
                        c'4
                        c'8.
                        - \tweak font-size 2
                        ^ \markup { "Meter 4, Attack Limit 3" }
                        c'8
                        c'8.
                        c'8.
                        c'8.
                        c'8
                        c'8
                        c'8.
                        c'8.
                        c'8
                        - \tweak font-size 2
                        ^ \markup { "Meter 4, Attack Limit 4" }
                        c'8
                        c'8
                        c'8
                        c'2
                        - \tweak font-size 2
                        ^ \markup { "Meter 5, Attack Limit 1" }
                        ~
                        c'8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/4
                        {
                            c'4
                            - \tweak font-size 2
                            ^ \markup { "Meter 5, Attack Limit 2" }
                            c'4
                        }
                        c'8.
                        - \tweak font-size 2
                        ^ \markup { "Meter 5, Attack Limit 3" }
                        c'4
                        c'8.
                        c'8.
                        c'8.
                        c'4
                        c'4
                        c'8.
                        c'8.
                        c'8.
                        - \tweak font-size 2
                        ^ \markup { "Meter 5, Attack Limit 4" }
                        c'8
                        c'8.
                        c'8
                        c'8.
                        c'8
                        c'8
                        c'8.
                        c'8.
                        c'8.
                        c'8
                        c'8
                        c'8
                        c'8.
                        c'8.
                        c'8
                        c'2..
                        - \tweak font-size 2
                        ^ \markup { "Meter 7, Attack Limit 1" }
                        c'4..
                        - \tweak font-size 2
                        ^ \markup { "Meter 7, Attack Limit 2" }
                        c'4..
                        c'4
                        - \tweak font-size 2
                        ^ \markup { "Meter 7, Attack Limit 3" }
                        ~
                        c'16
                        c'4
                        c'4
                        ~
                        c'16
                        c'4
                        ~
                        c'16
                        c'4
                        ~
                        c'16
                        c'4
                        c'4
                        c'4
                        ~
                        c'16
                        c'4
                        ~
                        c'16
                        c'4
                        - \tweak font-size 2
                        ^ \markup { "Meter 7, Attack Limit 4" }
                        c'8.
                        c'4
                        c'8.
                        c'4
                        c'8.
                        c'8.
                        c'4
                        c'4
                        c'4
                        c'8.
                        c'8.
                        c'8.
                        c'4
                        c'4
                        c'8.
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "baritonesaxophone staff"
                {
                    \context Voice = "baritonesaxophone voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
            >>
            \context Staff = "guitar staff"
            {
                \context Voice = "guitar voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
            \context GrandStaff = "sub group 4"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 5/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                        s1 * 7/8
                    }
                }
            >>
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
            \context Staff = "contrabass staff"
            {
                \context Voice = "contrabass voice"
                {
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                    s1 * 7/8
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
