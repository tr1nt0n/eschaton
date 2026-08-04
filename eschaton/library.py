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
            1,
            1,
            1,
            1,
        ],
        # staff_types=[
        #     ["Staff", "disappearingStaff"],
        # ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# markups

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
