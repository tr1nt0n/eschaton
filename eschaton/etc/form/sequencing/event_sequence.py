import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from eschaton import library
from eschaton import rhythm
from eschaton import meter

score = library.eschaton_score([(3, 8) for _ in range(0, 21)])


def illustrate_sequence(
    voice,
    measures,
    moves,
    starting_move=0,
    starting_superscript=0,
    transposition=0,
    retrograde=False,
):
    _material_to_color = {
        0: "darkgreen",
        1: "cyan",
        2: "darkmagenta",
        3: "darkblue",
        4: "darkred",
    }

    starting_move = starting_move + transposition
    starting_move = starting_move % 5
    starting_superscript = starting_superscript + transposition
    starting_superscript = starting_superscript % 3

    move_attachments = []

    for move in moves:
        current_move = starting_move
        current_superscript = starting_superscript

        literal_and_markup = (
            abjad.LilyPondLiteral(
                rf"""\staffHighlight {_material_to_color[current_move]} """,
                site="before",
            ),
            trinton.boxed_markup(
                string=rf"""Material {current_move + 1} | {current_superscript + 1}""",
                tweaks=[
                    abjad.Tweak(
                        rf"""- \tweak color {_material_to_color[current_move]}"""
                    )
                ],
                column="\center-column",
                font_name="Bodoni72 Book",
                fontsize=4,
                string_only=False,
            ),
        )

        move_attachments.append(literal_and_markup)

        if move == 1:
            starting_move += 1
            starting_move = starting_move % 5
            starting_superscript += 1
            starting_superscript = starting_superscript % 3

        if move == 2:
            starting_move += 4
            starting_move = starting_move % 5
            starting_superscript += 1
            starting_superscript = starting_superscript % 3

        if move == 3:
            starting_move += 4
            starting_move = starting_move % 5
            starting_superscript += 0
            starting_superscript = starting_superscript % 3

        if move == 4:
            starting_move += 2
            starting_move = starting_move % 5
            starting_superscript += 1
            starting_superscript = starting_superscript % 3

        if move == 5:
            starting_move += 2
            starting_move = starting_move % 5
            starting_superscript += 2
            starting_superscript = starting_superscript % 3

    (
        move_attachments[0],
        move_attachments[1],
        move_attachments[2],
        move_attachments[3],
        move_attachments[4],
        move_attachments[5],
        move_attachments[6],
    ) = (
        move_attachments[0],
        move_attachments[4],
        move_attachments[1],
        move_attachments[5],
        move_attachments[2],
        move_attachments[6],
        move_attachments[3],
    )

    if retrograde is True:
        move_attachements = move_attachments[::-1]

    for measure, literal_markup_bundle in zip(
        list(range(measures[0] - 1, measures[-1])), move_attachments
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure + 1,)),
            trinton.aftergrace_command(
                selector=trinton.select_leaves_by_index([0]), invisible=True
            ),
            trinton.attachment_command(
                attachments=[
                    literal_markup_bundle[0],
                    literal_markup_bundle[-1],
                    abjad.LilyPondLiteral(
                        r"\stopStaffHighlight", site="absolute_after"
                    ),
                ],
                selector=trinton.select_leaves_by_index([0]),
                direction=abjad.UP,
            ),
            voice=voice,
        )


illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(1, 7),
    moves=[2, 4, 5, 2, 1, 2, 4],
    starting_move=0,
    starting_superscript=0,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(1, 7),
    moves=[2, 4, 5, 1, 1, 2, 4],
    starting_move=0,
    starting_superscript=0,
)

illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(8, 10),
    moves=[2, 1, 2, 4, 1, 2, 4],
    transposition=2,
    starting_move=4,
    starting_superscript=2,
    retrograde=True,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(8, 11),
    moves=[2, 4, 5, 1, 1, 2, 4],
    transposition=2,
    starting_move=5,
    starting_superscript=2,
    retrograde=True,
)

illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(11, 14),
    moves=[2, 1, 2, 4, 1, 2, 4],
    transposition=1,
    starting_move=4,
    starting_superscript=2,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(12, 14),
    moves=[1, 2, 4, 2, 4, 5, 1],
    transposition=1,
    starting_move=5,
    starting_superscript=2,
)

illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(15, 21),
    moves=[2, 4, 5, 2, 1, 2, 4],
    starting_move=0,
    starting_superscript=0,
    transposition=2,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(15, 21),
    moves=[2, 4, 5, 1, 1, 2, 4],
    starting_move=0,
    starting_superscript=0,
    transposition=2,
)


trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.TimeSignature.stencil = ##f", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/etc/form/sequencing",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/etc/form/sequencing",
    segment_name="_material_sequence",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
