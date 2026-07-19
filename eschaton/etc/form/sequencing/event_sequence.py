import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import math
from eschaton import library
from eschaton import rhythm
from eschaton import meter

score = library.eschaton_score([(3, 8) for _ in range(0, 22)])

# determine event sequence


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

    # for _ in move_attachments:
    #     print(_[-1])
    #     print("")
    # print("")

    new_order = []

    attachment_length = len(move_attachments)
    forward_shuffle_step = attachment_length / 2
    forward_shuffle_step = math.ceil(forward_shuffle_step)
    forward_shuffle_step = int(forward_shuffle_step)
    backward_shuffle_step = forward_shuffle_step - 1

    index = 0
    for _ in range(0, len(move_attachments)):
        if _ == 0:
            new_order.append(move_attachments[index])
            # print(index)
        else:
            if _ % 2 == 1:
                index += forward_shuffle_step
                new_order.append(move_attachments[index])
                # print(index)
            else:
                index -= backward_shuffle_step
                new_order.append(move_attachments[index])
                # print(index)
    # print("")
    # print("")

    move_attachments = new_order

    if retrograde is True:
        move_attachements = move_attachments[::-1]

    # for _ in move_attachments:
    #     print(_[-1])
    #     print("")
    # print("")
    # print(len(move_attachments))
    #
    # breakpoint()

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
    moves=[2, 1, 2],
    transposition=2,
    starting_move=4,
    starting_superscript=2,
    retrograde=True,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(8, 11),
    moves=[2, 4, 5, 1],
    transposition=2,
    starting_move=5,
    starting_superscript=2,
    retrograde=True,
)

illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(11, 14),
    moves=[2, 1, 2, 4],
    transposition=1,
    starting_move=4,
    starting_superscript=2,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(12, 14),
    moves=[1, 2, 4],
    transposition=1,
    starting_move=5,
    starting_superscript=2,
)

illustrate_sequence(
    voice=score["altoflute voice"],
    measures=(15, 21),
    moves=[2, 4, 5, 2, 1, 2, 4],
    transposition=2,
    starting_move=0,
    starting_superscript=0,
)

illustrate_sequence(
    voice=score["oboe voice"],
    measures=(15, 21),
    moves=[2, 4, 5, 1, 1, 2, 4],
    transposition=2,
    starting_move=0,
    starting_superscript=0,
)

# partition sections


def partition_sections(voice, partitions, starting_section=1, first_measure=1):
    current_measure = first_measure
    current_section = starting_section

    for partition in partitions:
        first_measure = current_measure
        last_measure = first_measure + partition
        last_measure = last_measure - 1

        trinton.make_music(
            lambda _: trinton.select_target(_, (first_measure, last_measure)),
            trinton.linear_attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        rf'\tweak text " Section {current_section} " \startMeasureSpanner',
                        site="absolute_before",
                    ),
                    abjad.LilyPondLiteral(
                        r"\stopMeasureSpanner", site="absolute_after"
                    ),
                ],
                selector=trinton.select_leaves_by_index([0, -1]),
            ),
            voice=voice,
        )

        current_measure += partition
        current_section += 1


partition_sections(
    voice=score["Global Context"],
    partitions=[2, 4, 5, 2, 4, 5],
    starting_section=1,
    first_measure=1,
)

# weight sections


def determine_section_lengths(
    voice,
    section_first_measures,
    piece_duration_in_seconds,
    section_proportional_factors,
    tempo_modulations,
):
    for section_first_measure, factor, tempo_modulation in zip(
        section_first_measures, section_proportional_factors, tempo_modulations
    ):
        numerator = factor * piece_duration_in_seconds
        denominator = sum(section_proportional_factors)

        seconds_length = numerator / denominator
        seconds_length = math.floor(seconds_length)
        seconds_length = int(seconds_length)
        seconds_markup = abjad.Markup(
            rf"""\markup {{ " {seconds_length} seconds long " }}"""
        )

        relevant_modulation = tempo_modulation

        numerator = relevant_modulation[0]
        denominator = relevant_modulation[-1]

        beat_count = seconds_length * numerator
        beat_count = beat_count / denominator

        new_tempo = 60 * numerator
        new_tempo = new_tempo / denominator

        beat_count = math.floor(beat_count)
        beat_count = int(beat_count)

        beat_count_markup = abjad.Markup(
            rf"""\markup {{ " {beat_count} beats at {new_tempo} BPM " }}"""
        )

        trinton.make_music(
            lambda _: trinton.select_target(_, (section_first_measure,)),
            trinton.attachment_command(
                attachments=[
                    abjad.bundle(
                        seconds_markup,
                        abjad.Tweak(r"- \tweak font-size 2.5"),
                        abjad.Tweak(r"- \tweak padding 8"),
                    ),
                    abjad.bundle(
                        beat_count_markup,
                        abjad.Tweak(r"- \tweak font-size 2.5"),
                        abjad.Tweak(r"- \tweak padding 8"),
                    ),
                ],
                selector=trinton.select_leaves_by_index([0]),
                direction=abjad.UP,
            ),
            voice=voice,
        )


determine_section_lengths(
    voice=score["Global Context"],
    section_first_measures=[1, 3, 7, 12, 14, 18],
    piece_duration_in_seconds=999,
    section_proportional_factors=[1, 5, 2, 4, 3, 3],
    tempo_modulations=[(2, 3), (1, 1), (4, 3), (5, 3), (4, 3), (2, 3)],
)

for measure_range, section_duration, proportional_factors, tempo in zip(
    [
        list(range(1, 3)),
        list(range(3, 7)),
    ],
    [
        90,
        181,
    ],
    [
        [3, 3],
        [4, 2, 5, 1],
    ],
    [
        (2, 3),
        (1, 1),
    ],
):
    tempo_modulations = [tempo for _ in range(len(measure_range))]

    determine_section_lengths(
        voice=score["oboe voice"],
        section_first_measures=measure_range,
        piece_duration_in_seconds=section_duration,
        section_proportional_factors=proportional_factors,
        tempo_modulations=tempo_modulations,
    )

# render file

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

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"\markup {X}",
                ),
                abjad.Tweak(r"- \tweak color white"),
                abjad.Tweak(r"- \tweak padding 18"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
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
