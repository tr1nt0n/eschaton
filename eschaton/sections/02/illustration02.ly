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
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Fl. }
                                    \staffHighlight darkgreen 
                                    c'8
                                    - \tweak color darkgreen
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    \stopStaffHighlight
                                    \staffHighlight darkmagenta 
                                    c'8
                                    - \tweak color darkmagenta
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 3 }
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    \stopStaffHighlight
                                    s1 * 1/8
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Ob. }
                                    \staffHighlight darkgreen 
                                    c'8
                                    - \tweak color darkgreen
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    \stopStaffHighlight
                                    \staffHighlight darkred 
                                    c'8
                                    - \tweak color darkred
                                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 3 }
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    ~
                                    c'8
                                    \stopStaffHighlight
                                    s1 * 1/8
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
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bari. Sax. }
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Bcl. }
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
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
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. I }
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Perc. II }
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
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
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Guit. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                        }
                    }
                }
                \tag #'voice8
                {
                    \context Staff = "harp staff"
                    {
                        \context Voice = "harp voice"
                        {
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Hp. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
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
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Pno. }
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                    s1 * 1/8
                                }
                            }
                        }
                    >>
                }
                \tag #'voice11
                {
                    \context Staff = "violin staff"
                    {
                        \context Voice = "violin voice"
                        {
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vn. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                        }
                    }
                }
                \tag #'voice12
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vla. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                        }
                    }
                }
                \tag #'voice13
                {
                    \context Staff = "cello staff"
                    {
                        \context Voice = "cello voice"
                        {
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                        }
                    }
                }
                \tag #'voice14
                {
                    \context Staff = "contrabass staff"
                    {
                        \context Voice = "contrabass voice"
                        {
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                            s1 * 1/8
                        }
                    }
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
