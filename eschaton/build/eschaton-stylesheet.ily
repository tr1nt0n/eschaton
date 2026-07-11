\version "2.23.81"
\language english
#(set-default-paper-size '(cons (* 11 in) (* 17 in)))
#(set-global-staff-size 20)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-spanners.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

\header {
    dedication = \markup \column {\line \override #'(font-name . "Bodoni72 Book Italic") { \fontsize #1 { "to" \override #'(font-name . "Bodoni72 Book") "Shana"  } } \line { \fontsize #0.01 \with-color #white "."} }
    title = \markup \override #'(font-name . "Bodoni72 Book") \center-column { \line \fontsize #10 { "E S C H A T O N" } \fontsize #0.01 \with-color #white "."}
    subtitle = \markup \fontsize #1 \center-column { \line { \override #'(font-name . "Bodoni72 Book") { "( two pillars )" } } \fontsize #0.01 \with-color #white "."}
    composer = \markup \column { \override #'(font-name . "Bodoni72") \fontsize #1 {"Trinity Hlynn Prater (*2000)"} \fontsize #-10 \with-color #white "."}
}

afterGraceFraction = #(cons 15 16)

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
        \consists Measure_spanner_engraver
		\consists Metronome_mark_engraver
        \consists Multi_measure_rest_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
        \override BarNumber.Y-offset = 5
        \override BarNumber.X-extent = ##f
        \override BarNumber.X-offset = -4
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 1
        \override BarNumber.font-name = "Bodoni72 Book"
        \override MetronomeMark.stencil = ##f
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))
        \override TimeSignature.font-size = 7
		\override TimeSignature.font-name = "Bodoni72 Book"
        \override TimeSignature.X-extent = ##f
        \override TimeSignature.X-offset = -2
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.layer = 4
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.Y-offset = 11
        % \override TimeSignature.transparent = ##t
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        \consists Grid_line_span_engraver
        % \consists Measure_spanner_engraver
        \remove Bar_number_engraver
        proportionalNotationDuration = #(ly:make-moment 1 40)
        pedalSustainStyle = #'mixed

        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 7) (minimum distance . 7) (padding . 7) (stretchability . 0))
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 7) (minimum distance . 7) (padding . 7) (stretchability . 0))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        \override Accidental.layer = 3
        \override Accidental.whiteout-style = #'outline
        \override Accidental.whiteout = 1
        % \override Accidental.X-extent = ##f

        % \override Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
        \override Arpeggio.whiteout-style = #'outline
        \override Arpeggio.whiteout = 1
        \override Arpeggio.layer = 2

        \override Script.layer = 2
        \override Script.whiteout-style = #'outline
        \override Script.whiteout = 1

        \override BarLine.hair-thickness = 0.5
        \override BarLine.thick-thickness = #10
        \override BarLine.layer = 2
        \override BarLine.bar-extent = #'(-2 . 2)

        autoBeaming = ##f
        \override Beam.breakable = ##t
        % \override Beam.damping = 2
        % \override Beam.concaveness = #10000
        \override Beam.beam-thickness = #1.15
        \override Beam.length-fraction = #1.84

        \override BendAfter.thickness = #3

        \override BreathingSign.text = \markup {
            \fontsize #7.5
            \override #'(font-name . "ekmelos")
            \char ##xe4D5
        }

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override DynamicText.font-size = #1
        \override DynamicText.layer = 2
        \override DynamicText.whiteout-style = #'outline
        \override DynamicText.whiteout = 1
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #4
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override KeySignature.layer = 2
        \override KeySignature.whiteout-style = #'outline
        \override KeySignature.whiteout = 1

        \override MeasureSpanner.direction = #UP
        \override MeasureSpanner.thickness = #1.5
        \override MeasureSpanner.font-size = 7
        \override MeasureSpanner.font-name = "Bodoni72 Book"
        \override MeasureSpanner.padding = 4

        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t

        \override OttavaBracket.layer = 2
        \override OttavaBracket.whiteout-style = #'outline
        \override OttavaBracket.whiteout = 1

        \override Parentheses.font-size = #1

        \override PianoPedalBracket.shorten-pair = #'(0 . -4)

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 1.5
        \override Stem.thickness = #0.5
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(5.5)

        % \override StemTremolo.stencil = #ly:text-interface::print
        % \override StemTremolo.text = \markup {
        %     \fontsize #3.5
        %     \override #'(font-name . "ekmelos")
        %     \lower #1
        %     {
        %         \char ##xe222
        %     }
        % }
        \override StemTremolo.whiteout-style = #'outline
        \override StemTremolo.whiteout = 1
        \override StemTremolo.layer = 2

        \override TextScript.font-name = "Bodoni72 Book"
        \override TextScript.whiteout-style = #'outline
        \override TextScript.whiteout = 1
        \override TextSpanner.font-name = "Bodoni72 Book"

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5

        \override TrillSpanner.bound-details.right.padding = #-3

        \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) LaissezVibrerTie
        \override LaissezVibrerTie.X-extent = ##f

        % \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
        % \override RepeatTie.X-extent = ##f

        \override TrillPitchAccidental.avoid-slur = #'ignore

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 0.5
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.layer = 2
        \override TupletBracket.whiteout-style = #'outline
        \override TupletBracket.whiteout = 1
        \override TupletNumber.font-size = 1
        \override TupletNumber.layer = 3
        \override TupletNumber.whiteout-style = #'outline
        \override TupletNumber.whiteout = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletNumber.font-name = "Bodoni72 Book Italic"
        % \override TupletBracket.stencil =
        %     #(lambda (grob)
        %        (let* ((pos (ly:grob-property grob 'positions))
        %               (dir (ly:grob-property grob 'direction))
        %               (new-pos (if (= dir 1)
        %                            (max (car pos)(cdr pos))
        %                            (min (car pos)(cdr pos)))))
        %          (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
        %          (ly:tuplet-bracket::print grob)))
        % \override TupletBracket.direction = #UP

        \override VoltaBracketSpanner.padding = 8
    }

    \context {
        \Staff
        fontSize = #-1
        \accepts bowContactStaff
        \consists Duration_line_engraver
        \consists Grid_point_engraver
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver
        \remove Time_signature_engraver

        % \override Accidental.X-extent = ##f

        \override AccidentalSuggestion.direction = #UP
        \override AccidentalSuggestion.font-size = 0.2
        \override AccidentalSuggestion.whiteout-style = #'outline
        \override AccidentalSuggestion.whiteout = 1
        \override AccidentalSuggestion.layer = 2
        % \override AccidentalSuggestion.parent-alignment-X = -1
        % \override AccidentalSuggestion.X-extent = #'(0 . 0)

        \override DurationLine.style = #'line
        \override DurationLine.thickness = #3
        \override DurationLine.to-barline = ##f
        \override DurationLine.breakable = ##t

        \override InstrumentName.self-alignment-X = #CENTER

        \override TimeSignature.font-size = 1
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.layer = 4
        \RemoveAllEmptyStaves
        % \RemoveEmptyStaves
    }

    \context{
        \Staff
        \name bowContactStaff
        \alias Staff

        \override Accidental.stencil = ##f

        \override BarLine.transparent = ##t
        \override BarLine.bar-extent = #'(-4.5 . 4.5)

        \override Beam.stencil = ##f

        \override Clef.stencil = #ly:text-interface::print
        \override Clef.text = \bow-clef

        \override Dots.stencil = ##f

        \override Flag.stencil = ##f

        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5

        \override MultiMeasureRest.transparent = ##t

        \override NoteHead.duration-log = 2
        \override NoteHead.no-ledgers = ##t
        \override NoteHead.transparent = ##t
        \override NoteHead.X-extent = #'(0 . 0)

        \override StaffSymbol.line-count = #3
        \override StaffSymbol.line-positions = #'(9 0 -9)

        \override Stem.stencil = ##f

        \override Rest.transparent = ##t

        \override TimeSignature.stencil = ##f

        \override Tie.stencil = ##f

        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f

        \RemoveAllEmptyStaves
    }

    \context{
        \GrandStaff
        % \remove Time_signature_engraver
        \accepts bowContactStaff
        \consists Grob_pq_engraver
        % \consists Measure_spanner_engraver

        \consists #Interrupt_heads_engraver
        \consists #Explicit_interrupt_heads_engraver
        \consists #Follow_lines_engraver
        \consists #Switch_heads_engraver
        \consists #Hocket_lines_engraver
        \override VoiceFollower.layer = -20
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \consists Measure_spanner_engraver

        \override Accidental.font-size = 2

        \override MeasureSpanner.staff-padding = 7
    }

}
%
\paper {
    #(define fonts
        (set-global-fonts
	        #:music "haydn"
	        #:brace "haydn"
	))
    min-systems-per-page = 1
    % max-systems-per-page = 2
    % system-separator-markup = \markup \fontsize #12 { \tremolo-moderato }
    system-system-spacing = #'((basic-distance . 25) (minimum-distance . 25) (padding . 0) (stretchability . 25))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""

    evenFooterMarkup = \markup
        \fill-line {
            \concat {
                \override #'(font-name . "Bodoni72 Book Italic")
                "E S C H A T O N"
                \override #'(font-name . "Bodoni72 Book")
                " - Trinity Hlynn Prater"
            }
            \concat {
                \fontsize #1
                \override #'(font-name . "Bodoni72 Book")
                    \fromproperty #'page:page-number-string
            }
        }

        oddFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #1
                    \override #'(font-name . "Bodoni72 Book")
                        \fromproperty #'page:page-number-string
                }
                \concat {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    "E S C H A T O N"
                    \override #'(font-name . "Bodoni72 Book")
                    " - Trinity Hlynn Prater"
                }
            }
}
