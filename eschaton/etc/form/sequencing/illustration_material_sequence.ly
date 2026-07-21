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
            \tweak text " Section 1 " \startMeasureSpanner
            \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 28 beats at 40.0 BPM " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 43 seconds long " }
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
            \tweak text " Section 2 " \startMeasureSpanner
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 215 beats at 60.0 BPM " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 215 seconds long " }
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
            \tweak text " Section 3 " \startMeasureSpanner
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 114 beats at 80.0 BPM " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 86 seconds long " }
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
            \tweak text " Section 4 " \startMeasureSpanner
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 172 seconds long " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 286 beats at 100.0 BPM " }
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
            \tweak text " Section 5 " \startMeasureSpanner
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 129 seconds long " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 172 beats at 80.0 BPM " }
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \pageBreak
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
            \tweak text " Section 6 " \startMeasureSpanner
            \time 3/8
            s1 * 3/8
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 129 seconds long " }
            - \tweak font-size 2.5
            - \tweak padding 8
            ^ \markup { " 86 beats at 40.0 BPM " }
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \stopMeasureSpanner
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "altoflute staff"
                {
                    \context Voice = "altoflute voice"
                    {
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 4 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 7 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 23 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 35 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 35 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 35 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 53 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 53 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 53 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 53 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 5 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 6 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 28 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 37 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 11 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 14 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 22 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 29 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 17 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 22 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 129 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 215 beats at 100.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 43 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 beats at 100.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 46 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 61 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 18 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 24 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 36 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 48 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 27 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 36 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 16 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 25 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 5 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 8 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 28 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 43 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 11 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 17 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        s1 * 3/8
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 22 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 34 seconds long " }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 14 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 21 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 14 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 21 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 35 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 35 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 89 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 89 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkred 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkred
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 5 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 17 beats at 60.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 17 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 15 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 20 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 15 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 20 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 20 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 26 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 10 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 13 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 25 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 33 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 43 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 71 beats at 100.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 129 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 215 beats at 100.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 27 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 36 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 36 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 48 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 18 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 24 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 46 seconds long " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 61 beats at 80.0 BPM " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkmagenta 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkmagenta
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 3 | 3 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 6 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 9 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkblue 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkblue
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 4 | 2 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 19 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 29 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight cyan 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color cyan
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 2 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 19 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 29 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        \staffHighlight darkgreen 
                        \afterGrace
                        s1 * 3/8
                        - \tweak color darkgreen
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Material 1 | 1 }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 26 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 39 seconds long " }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                        }
                        \stopStaffHighlight
                        s1 * 3/8
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 12 beats at 40.0 BPM " }
                        - \tweak font-size 2.5
                        - \tweak padding 2
                        _ \markup { " 19 seconds long " }
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "baritonesaxophone staff"
                {
                    \context Voice = "baritonesaxophone voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
            >>
            \context Staff = "guitar staff"
            {
                \context Voice = "guitar voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context GrandStaff = "sub group 4"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
            >>
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "contrabass staff"
            {
                \context Voice = "contrabass voice"
                {
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
