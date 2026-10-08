import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import fractions
import itertools
from eschaton import library
from eschaton import pitch
from eschaton import rhythm
from eschaton import meter

# score

time_signatures = [(3, 4) for _ in range(0, 10)]

score = library.eschaton_score(time_signatures)

## MUSIC ##

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1], 16, extra_counts=[0, 1])),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c'", "df'", "a'", "b'"]]),
    voice=score["percussion 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.accelerando([(1, 16), (1, 64), (1, 64)])),
    trinton.invisible_tuplet_brackets(),
    evans.PitchHandler([["c'", "df'", "a'", "b'"]]),
    voice=score["percussion 1 voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([4, 3, 4, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3], 32)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "f",
            "f'''",
            "g",
            "f'''",
            "a",
            "f'''",
            "b",
            "f'''",
            "c'",
            "e'''",
            "d'",
            "ef'''",
            "e'",
            "ef'''",
            "f'",
            "ef'''",
        ]
    ),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["percussion 2 voice"],
    beam_meter=True,
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=30)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(
        [
            "b",
            "a''",
            "b",
            "a''",
            "c'",
            "g''",
            "c'",
            "g''",
            "d'",
            "f''",
            "d'",
            "f''",
            "d'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "f'",
            "e''",
            "f'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    library.half_note_signifier(),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Bowing the side of the bridge",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 14, 29, 34], first=True, pitched=True
        ),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (37, 44)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=67)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(
#         [
#             "g'",
#             "d''",
#             "b'",
#             "f''",
#             "d''",
#             "a''",
#             "f''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#         ]
#     ),
#     trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
#     library.half_note_signifier(),
#     # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"Bowing the side of the bridge",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=6.5,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic('"mf"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"fff"'),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 7, 12], first=True, pitched=True
#         ),
#     ),
#     voice=score["cello voice"],
#     beam_meter=True,
# )
#
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    library.bow_contact_staff(
        selector=trinton.select_leaves_by_index([0]), reset=False
    ),
    voice=score["cello voice"],
)

# contrabass music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=27)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(
        [
            "b",
            "a''",
            "b",
            "a''",
            "c'",
            "g''",
            "c'",
            "g''",
            "d'",
            "f''",
            "d'",
            "f''",
            "d'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "e'",
            "e''",
            "f'",
            "e''",
            "f'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    library.half_note_signifier(),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Bowing the side of the bridge",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 14, 29, 34], first=True, pitched=True
        ),
    ),
    voice=score["contrabass voice"],
    beam_meter=True,
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (37, 44)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=71)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(
#         [
#             "b'",
#             "f''",
#             "d''",
#             "a''",
#             "f''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#             "g''",
#             "c'''",
#         ]
#     ),
#     trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
#     library.half_note_signifier(),
#     # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"Bowing the side of the bridge",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=6.5,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic('"mf"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"fff"'),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 6, 10], first=True, pitched=True
#         ),
#     ),
#     voice=score["contrabass voice"],
#     beam_meter=True,
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    library.bow_contact_staff(
        selector=trinton.select_leaves_by_index([0]), reset=False
    ),
    voice=score["contrabass voice"],
)


# globals

# title

# instrument names

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# fermate

# trinton.fermata_measures(
#     score=score,
#     measures=[7],
#     fermata="short-fermata",
#     voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
#     font_size=14,
#     clef_whitespace=True,
#     blank=True,
#     last_measure=False,
#     padding=-3,
#     # extra_offset=2.5,
#     tag=abjad.Tag("+SCORE"),
# )

# tempi

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
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.BarLine.transparent = ##f", site="after"
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\once \override Score.BarLine.glyph-name = ".|:" """,
#                 site="absolute_after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([-1]),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (5, 6)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.BarLine(".|:", site="before"),
#             abjad.BarLine(":|.", site="after"),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r'\tweak text " ×7 " \startMeasureSpanner', site="absolute_before"
#             ),
#             abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.BarLine.transparent = ##f", site="after"
#             ),
#             abjad.LilyPondLiteral(
#                 r"""\once \override Score.BarLine.glyph-name = ".|:" """,
#                 site="absolute_after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([-1]),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (10, 11)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.BarLine(".|:", site="before"),
#             abjad.BarLine(":|.", site="after"),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r'\tweak text " ×5 " \startMeasureSpanner', site="absolute_before"
#             ),
#             abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (48,)),
#     trinton.attachment_command(
#         attachments=[abjad.BarLine("||", site="after")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# beautification

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.remove_redundant_time_signatures(score=score)

# breaking

# for measure in [1, 3, 5, 7]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [2, 4, 6, 8]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# for measure in [1]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [2, 4, 6]:
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
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 16 22 24 22 22 22 30 16 19)))",
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
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #18",
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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/01c",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="01c",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
