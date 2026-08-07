import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from eschaton import library
from eschaton import rhythm
from eschaton import meter

# score

score = library.eschaton_score([(1, 8) for _ in range(29)])

# form annotations
#
# library.annotate_form(
#     voice=score["altoflute voice"], material=1, stage=1, measure_range=(1, 4)
# )
#
# library.annotate_form(
#     voice=score["altoflute voice"], material=3, stage=3, measure_range=(5, 28)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=1, stage=1, measure_range=(1, 14)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=5, stage=3, measure_range=(15, 28)
# )

# orchestration annotations

# oboe orchestration

# library.annotate_form(
#     voice=score["oboe voice"],
#     material=1,
#     stage=1,
#     measure_range=(1, 14)
# )

# saxophone orchestration

# library.annotate_form(
#     voice=score["baritonesaxophone voice"],
#     material=5,
#     stage=3,
#     measure_range=(15, 28)
# )

# percussion 1 orchestration

# library.annotate_form(
#     voice=score["percussion 1 voice"],
#     material=3,
#     stage=3,
#     measure_range=(20, 28)
# )

# percussion 2 orchestration

# library.annotate_form(
#     voice=score["percussion 2 voice"],
#     material=3,
#     stage=3,
#     measure_range=(20, 28)
# )

# guitar orchestration

# library.annotate_form(
#     voice=score["guitar voice"],
#     material=5,
#     stage=3,
#     measure_range=(15, 28)
# )

# harp orchestration

# library.annotate_form(
#     voice=score["harp voice"],
#     material=5,
#     stage=3,
#     measure_range=(15, 28)
# )

# violin orchestration

# library.annotate_form(
#     voice=score["violin voice"],
#     material=1,
#     stage=1,
#     measure_range=(1, 14)
# )

# library.annotate_form(
#     voice=score["violin voice"],
#     material=3,
#     stage=3,
#     measure_range=(17, 28)
# )

# viola orchestration

# library.annotate_form(
#     voice=score["viola voice"],
#     material=3,
#     stage=3,
#     measure_range=(13, 25)
# )

# cello orchestration
#
# library.annotate_form(
#     voice=score["cello voice"],
#     material=3,
#     stage=3,
#     measure_range=(8, 22)
# )

# contrabass orchestration

# library.annotate_form(
#     voice=score["contrabass voice"],
#     material=3,
#     stage=3,
#     measure_range=(5, 18)
# )

# meter

# oboe and violin meter

for voice_name in ["oboe voice", "violin voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.RhythmHandler(meter.write_meter(index=5, attack_limit=4)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 7)),
        evans.RhythmHandler(meter.write_meter(index=2, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((4,)),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (8, 14)),
        evans.RhythmHandler(meter.write_meter(index=2, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((7,)),
    )

# saxophone, harp, and guitar meters

for voice_name, eighths, index in zip(
    ["baritonesaxophone voice", "harp voice", "guitar voice"],
    [
        (7, 5, 2),
        (6, 4, 4),
        (7, 4, 3),
    ],
    [
        1,
        3,
        2,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (15, 28)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(eighths),
    )

# percussion meter

for voice_name in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (20, 28)),
        evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((2, 3, 4)),
    )

# violin meter

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 28)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 4, 6)),
)

# viola meter

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 26)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 5, 7)),
)

# cello meter

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    evans.RhythmHandler(meter.write_meter(index=2, attack_limit=4)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    evans.RhythmHandler(meter.write_meter(index=5, attack_limit=4)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 20)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 22)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=1)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2,)),
)

# contrabass meter

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 14)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 19)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            2,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20, 22)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=1)),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

# rhythms

# oboe rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
    rhythm.rhythm_1(stage=1, selector=trinton.logical_ties(pitched=True, grace=False)),
    voice=score["oboe voice"],
)

# saxophone rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=1,
        partitions=[
            2,
            3,
            3,
            3,
            4,
            4,
            2,
            1,
            2,
            2,
            2,
        ],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["baritonesaxophone voice"],
)

# guitar rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=2,
        partitions=[1, 2, 3],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["guitar voice"],
)

# harp rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=3,
        partitions=[3, 3, 4],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["harp voice"],
)

# violin rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
    rhythm.rhythm_1(stage=1, selector=trinton.logical_ties(pitched=True, grace=False)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 28)),
    rhythm.rhythm_3(
        instrument="strings",
        fuse_partitions=[2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

# viola rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 26)),
    rhythm.rhythm_3(
        instrument="strings",
        fuse_partitions=[2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["viola voice"],
)

# cello rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 22)),
    rhythm.rhythm_3(
        instrument="strings",
        fuse_partitions=[2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["cello voice"],
)

# contrabass rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 20)),
    rhythm.rhythm_3(
        instrument="strings",
        fuse_partitions=[2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["contrabass voice"],
)

# rewrite time signatures

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(1, 28),
    replacement_signatures=[(4, 8), (5, 8), (5, 8), (2, 8), (4, 4), (4, 8)],
)

trinton.rewrite_meter(target=score)

# pitching and attachments

# oboe pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(["ef'''"]),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 9, 10, 15, 16, 17, 18, 22, 23, 25]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=3, right=1),
                abjad.BeamCount(left=1, right=2),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=3),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index([11, 12, 13, 14, 20, 21]),
    ),
    voice=score["oboe voice"],
)

# violin pitching

# oboe pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(["ef'''"]),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 9, 10, 15, 16, 17, 18, 22, 23, 25]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=3, right=1),
                abjad.BeamCount(left=1, right=2),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=3),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index([11, 12, 13, 14, 20, 21]),
    ),
    voice=score["violin voice"],
)

# globals

# title

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=r"II. There is only dance music in times of war.",
                    column="\center-column",
                    font_name="Bodoni72 Book",
                    fontsize=5,
                    string_only=False,
                ),
                abjad.Tweak(r"- \tweak padding 17"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)


# instrument names

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[7],
    fermata="middle-fermata",
    voice_names=[
        "altoflute voice",
        "oboe voice",
        "baritonesaxophone voice",
        "bassclarinet voice",
        "percussion 1 voice",
        "percussion 2 voice",
        "guitar voice",
        "harp voice",
        "piano 1 voice",
        "piano 2 voice",
        "violin voice",
        "viola voice",
        "cello voice",
        "contrabass voice",
    ],
    font_size=14,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-3,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=40,
                padding=10.5,
                note_head_fontsize=0.5,
                stem_length=1.5,
                text_fontsize=5.5,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=-0.5,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 4)),
#     trinton.spanner_command(
#         strings=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=112,
#                 padding=0,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change="accel.",
#                 site="after",
#                 hspace=0,
#                 string_only=True,
#             ),
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=112,
#                 padding=0,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=0,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=13,
#         tweaks=None,
#         right_padding=2,
#         direction=None,
#         full_string=True,
#         command="Three",
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2, 3)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
#                 site="before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 1,]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["cello 2 voice temp"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1], grace=False),
#     ),
#     voice=score["cello lower voice"],
# )
#
# for voice_name in ["violin 1 bow voice", "violin 4 voice", "viola 2 voice temp 2"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (8, 10)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#             ],
#             selector=trinton.select_leaves_by_index([-1]),
#         ),
#         voice=score[voice_name],
#     )

# barlines

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("||", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# breaking

# # spacing
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 30 33 26.5)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #14",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/02",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    # segment_name="02_form",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
