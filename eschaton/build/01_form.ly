    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/2
            s1 * 3/2
            - \tweak padding 17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { I. Back. ( ii ) }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-0.5 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #5.5 { "= 72" } } }
            \time 5/4
            s1 * 5/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-0.5 \raise #10.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #5.5 { "= 48" } } }
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \bar "||"
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
                                    r1.
                                    r2.
                                    r2
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { tremolando (static except for quasi klangfarbenmelodie w/ harp + guit.) }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to sixteenths }
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { sixteenths }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to eighths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { eighths }
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to quarters }
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { quarters }
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to halves }
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { figures }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin elongating long notes of figures }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { swells (always elongating) }
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { sustained }
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { quarters }
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to eighths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { eighths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to sixteenths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { sixteenths }
                                    ~
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { this measure is a feather beam to basically a tremolando }
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { tremolando }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { rests }
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { quarters }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to eighths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { eighths }
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { begin trans. to tremolando }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    c'2.
                                    - \tweak font-size 4
                                    ^ \markup { tremolando }
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                            r1.
                            r2.
                            r2
                            c'2.
                            ~
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            c'2.
                            ~
                            c'2.
                            ~
                            c'2.
                            ~
                            c'2.
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
                            r1.
                            r2.
                            r2
                            c'2.
                            ~
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            c'2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            r2.
                            c'2.
                            ~
                            c'2.
                            c'2.
                            - \tweak font-size 4
                            ^ \markup { halves }
                            ~
                            c'2.
                            ~
                            c'2.
                            ~
                            c'2.
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
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Vc. }
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Contrabass }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Cb. }
                                    r1.
                                    r2.
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    c'2.
                                    ~
                                    c'2.
                                    r2.
                                    r2.
                                    r2.
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
