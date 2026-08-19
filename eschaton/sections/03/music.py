import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from eschaton import library
from eschaton import rhythm
from eschaton import meter
from eschaton import pitch

# score

score = library.eschaton_score([(1, 8) for _ in range(213)])

# form annotations

library.annotate_form(
    voice=score["altoflute voice"], material=5, stage=2, measure_range=(1, 35)
)

library.annotate_form(
    voice=score["altoflute voice"], material=4, stage=1, measure_range=(36, 106)
)

library.annotate_form(
    voice=score["altoflute voice"], material=2, stage=3, measure_range=(107, 159)
)

library.annotate_form(
    voice=score["altoflute voice"], material=3, stage=2, measure_range=(160, 212)
)

library.annotate_form(
    voice=score["oboe voice"], material=5, stage=2, measure_range=(1, 71)
)

library.annotate_form(
    voice=score["oboe voice"], material=1, stage=1, measure_range=(72, 106)
)

library.annotate_form(
    voice=score["oboe voice"], material=2, stage=3, measure_range=(107, 195)
)

library.annotate_form(
    voice=score["oboe voice"], material=5, stage=2, measure_range=(196, 212)
)

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

# rhythms

# rewrite time signatures

# trinton.change_time_signatures(
#     score=score,
#     global_context="Global Context",
#     measure_range=(1, 28),
#     replacement_signatures=[(4, 8), (5, 8), (5, 8), (2, 8), (4, 4), (4, 8)],
# )
#
# trinton.rewrite_meter(target=score)

# pitching and attachments


# globals

# title

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 trinton.boxed_markup(
#                     string=r"III. wait.",
#                     column="\center-column",
#                     font_name="Bodoni72 Book",
#                     fontsize=5,
#                     string_only=False,
#                 ),
#                 abjad.Tweak(r"- \tweak padding 17"),
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )


# instrument names

# library.write_instrument_names(score=score)
# library.write_short_instrument_names(score=score)

# fermate

# trinton.fermata_measures(
#     score=score,
#     measures=[7],
#     fermata="middle-fermata",
#     voice_names=[
#         "altoflute voice",
#         "oboe voice",
#         "baritonesaxophone voice",
#         "bassclarinet voice",
#         "percussion 1 voice",
#         "percussion 2 voice",
#         "guitar voice",
#         "harp voice",
#         "piano 1 voice",
#         "piano 2 voice",
#         "violin voice",
#         "viola voice",
#         "cello voice",
#         "contrabass voice",
#     ],
#     font_size=14,
#     clef_whitespace=True,
#     blank=True,
#     last_measure=False,
#     padding=-8,
#     # extra_offset=2.5,
#     tag=abjad.Tag("+SCORE"),
# )

# tempi

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=40,
#                 padding=10.5,
#                 note_head_fontsize=0.5,
#                 stem_length=1.5,
#                 text_fontsize=5.5,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=-0.5,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (7,)),
#     trinton.attachment_command(
#         attachments=[abjad.BarLine("||", site="after")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# beautification

trinton.remove_redundant_time_signatures(score=score)

# breaking

# for measure in [1, 3, 6]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [2]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [1, 2, 3, 6]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [4, 5, 7]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 18 18 22 22 19 15 15 15)))",
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
#     lambda _: trinton.select_target(_, (6,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #45",
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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/03",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="03_form",
    # segment_name="03",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
