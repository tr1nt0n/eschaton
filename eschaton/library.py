import abjad
import baca
import evans
import trinton
import itertools
import numpy
import eschaton
import random
import statistics
from sympy import combinatorics

# score


def eschaton_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.AltoFlute(),
            abjad.Oboe(),
            abjad.BaritoneSaxophone(),
            abjad.BassClarinet(),
            abjad.Percussion(),
            abjad.Percussion(),
            abjad.Guitar(),
            abjad.Harp(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Violin(),
            abjad.Viola(),
            abjad.Cello(),
            abjad.Contrabass(),
        ],
        groups=[
            2,
            2,
            2,
            1,
            1,
            2,
            4,
        ],
        inner_staff=["GrandStaff" for _ in range(0, 7)],
        time_signatures=time_signatures,
        filler=abjad.Rest,
    )

    return score


# immutables


def return_dynamic_sequence(index, effort_dynamics=False):
    if effort_dynamics is True:
        string_list = ['"p"', '"mf"', '"f"', '"mp"', '"p"', '"pp"', '"p"', '"mf"']
    else:
        string_list = ["p", "mf", "f", "mp", "p", "pp", "p", "mf"]

    dynamic_list = [abjad.Dynamic(_) for _ in string_list]

    dynamic_list = trinton.rotated_sequence(dynamic_list, index % len(dynamic_list))

    dynamic_list = itertools.cycle(dynamic_list)

    return dynamic_list


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Flute }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Oboe }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #-1.5 \override #\'(font-name . "Bodoni72 Book") { Baritone Saxophone }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Bass Clarinet }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Percussion I }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Percussion II }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Guitar }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Harp }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Piano }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violin }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Viola }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violoncello }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Contrabass }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Fl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Ob. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Bari. Sax. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Bcl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Perc. I }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Perc. II }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Guit. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Hp. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Pno. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Vn. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Vla. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Vc. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Cb. }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(
        [
            "altoflute voice",
            "oboe voice",
            "baritonesaxophone voice",
            "bassclarinet voice",
            "percussion 1 voice",
            "percussion 2 voice",
            "guitar voice",
            "harp voice",
            "piano 1 voice",
            "violin voice",
            "viola voice",
            "cello voice",
            "contrabass voice",
        ],
        all_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(
        [
            "altoflute voice",
            "oboe voice",
            "baritonesaxophone voice",
            "bassclarinet voice",
            "percussion 1 voice",
            "percussion 2 voice",
            "guitar voice",
            "harp voice",
            "piano 1 voice",
            "violin voice",
            "viola voice",
            "cello voice",
            "contrabass voice",
        ],
        all_short_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )


# beautification


# notation tools


def guitar_note_heads(selector):
    def note_heads(argument):
        selections = selector(argument)
        for selection in selections:
            notes = abjad.select.leaves(selection)
            for note in notes:
                pitch = note.written_pitch.number
                if pitch == int(pitch):
                    pass
                else:
                    notehead_command = trinton.change_notehead_command(
                        notehead="half-harmonic", selector=trinton.pleaves()
                    )
                    notehead_command(note)

    return note_heads


def vibrato_spanner(selector=trinton.logical_ties(pitched=True, grace=False), index=0):
    def vibrato(argument):
        selections = selector(argument)

        peak_amounts = [2, 4, 5, 3, 2, 1, 2, 4]
        peak_amounts = trinton.rotated_sequence(peak_amounts, index % len(peak_amounts))

        amplitude_sequence = peak_amounts[::-1]

        amplitude_sequence_index = 0
        for selection, peak_amount in zip(selections, itertools.cycle(peak_amounts)):
            amplitudes = []
            rotated_amplitude_sequence = trinton.rotated_sequence(
                amplitude_sequence, amplitude_sequence_index % len(amplitude_sequence)
            )
            for _ in range(0, peak_amount):
                amplitudes.append(rotated_amplitude_sequence[_])
            amplitude_sequence_index += peak_amount

            amplitudes_string = r"("

            for amplitude in amplitudes:
                amplitudes_string += rf"{amplitude}"
                amplitudes_string += " "

            amplitudes_string += r")"

            vibrato_spanner = abjad.LilyPondLiteral(
                rf"\vibrato #'{amplitudes_string} #{amplitudes[-1]}  #0.2",
                site="before",
            )

            aftergrace_container = abjad.AfterGraceContainer("c'16")
            abjad.override(
                abjad.select.leaf(aftergrace_container, 0)
            ).NoteHead.transparent = True
            invisible_literal = abjad.LilyPondLiteral(
                [
                    r"\once \override Stem.stencil = ##f",
                    r"\once \override Flag.stencil = ##f",
                    r"\once \override NoteHead.no-ledgers = ##t",
                    r"\once \override Accidental.stencil = ##f",
                ],
                site="before",
            )
            abjad.attach(invisible_literal, abjad.select.leaf(aftergrace_container, 0))
            abjad.attach(
                abjad.StopTrillSpan(), abjad.select.leaf(aftergrace_container, 0)
            )

            abjad.attach(vibrato_spanner, abjad.select.leaf(selection, 0))
            abjad.attach(abjad.StartTrillSpan(), abjad.select.leaf(selection, 0))
            abjad.attach(aftergrace_container, abjad.select.leaf(selection, -1))

    return vibrato


def flute_flageolets(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        all_but_first = abjad.select.exclude(selections, [0])

        handler = evans.PitchHandler(["g''''", "a''''", "b''''", "a''''"])

        abjad.attach(
            abjad.LilyPondLiteral(r"\set fontSize = #-3", "before"), selections[0]
        )

        abjad.attach(abjad.Ottava(n=1), selections[0])

        abjad.slur(selections)

        for leaf in selections:
            abjad.attach(abjad.Articulation("flageolet"), leaf)

        for leaf in all_but_first:
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Stem.stencil = ##f", "before"),
                leaf,
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Beam.stencil = ##f", "before"),
                leaf,
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Flag.stencil = ##f", "before"),
                leaf,
            )

        abjad.attach(abjad.LilyPondLiteral(r"\set fontSize = #-0.25", "after"), leaf)

        abjad.attach(abjad.Ottava(n=0, site="after"), selections[-1])

        abjad.beam(selections[0:2])

        handler(selections)

    return attach


# structure


def annotate_form(voice, material, stage, measure_range):
    _material_to_color = {
        1: "darkgreen",
        2: "cyan",
        3: "darkmagenta",
        4: "darkblue",
        5: "darkred",
    }

    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        evans.RhythmHandler(
            evans.talea([100000], 4),
        ),
        trinton.linear_attachment_command(
            attachments=[
                trinton.boxed_markup(
                    string=rf"""Material {material} | {stage}""",
                    tweaks=[
                        abjad.Tweak(
                            rf"""- \tweak color {_material_to_color[material]}"""
                        )
                    ],
                    column="\center-column",
                    font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                abjad.LilyPondLiteral(
                    rf"""\staffHighlight {_material_to_color[material]} """,
                    site="before",
                ),
                abjad.LilyPondLiteral(r"\stopStaffHighlight", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
            direction=abjad.UP,
        ),
        voice=voice,
    )
