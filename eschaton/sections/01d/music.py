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

time_signatures = [(3, 4) for _ in range(0, 15)]

score = library.eschaton_score(time_signatures)

## MUSIC ##

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(
            [-12, 4, 4, 4, 4, 4, 4, 4, 4, -100],
            32,
            extra_counts=[0, 0, -1, -2, -3, -4, -4, -4, 0],
        )
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.flute_flageolets(
        selector=trinton.pleaves(),
        ametric=False,
        # ottava=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["altoflute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 1, 2, 2, 2, 2, 2, 2, 2)),
    beam_meter=True,
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (3, 1, 1, 2, 1),
                (8, 1, -1),
                (-1,),
            ]
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["e'''"]),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([2, 4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rapid, random pressing of buttons + teeth on reed",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([["c'", "df'"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Articulation("stopped"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    evans.PitchHandler(["f", "f'''"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([4, 3, 5, 3, 100], 32)),
        direction=abjad.UP,
        voice_name="vibraphone muting voice",
        temp_name="temp 1"
        # preprocessor=trinton.fuse_eighths_preprocessor((8, 10, 8, 11)),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"Motor", r"ON"],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=6.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 2], pitched=True),
        right_padding=0.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"Motor", r"ON"],
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        right_padding=0.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 100%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["vibraphone muting voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #0", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["percussion 2 voice temp 1"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 11)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=67)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(
        [
            "g'",
            "d''",
            "b'",
            "f''",
            "d''",
            "a''",
            "f''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
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
        padding=6.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 7, 12], first=True, pitched=True
        ),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["cello voice"],
)

# contrabass music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 11)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=71)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(
        [
            "b'",
            "f''",
            "d''",
            "a''",
            "f''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
            "g''",
            "c'''",
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
        padding=6.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 6, 10], first=True, pitched=True
        ),
    ),
    voice=score["contrabass voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
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

for measure in [1]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [2]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

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
# for measure in [8, 10]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 35 35 35)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #40",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)


# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/01d",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="01d",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
