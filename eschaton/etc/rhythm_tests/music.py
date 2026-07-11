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

time_signatures = [
    # 2/8
    # attack limit 1
    [(2, 8) for _ in range(0, 1)],
    # attack limit 2
    [(2, 8) for _ in range(0, 1)],
    # attack limit 3
    [(2, 8) for _ in range(0, 3)],
    # attack limit 4
    [(2, 8) for _ in range(0, 1)],
    # 3/8
    # attack limit 1
    [(3, 8) for _ in range(0, 1)],
    # attack limit 2
    [(3, 8) for _ in range(0, 1)],
    # attack limit 3
    [(3, 8) for _ in range(0, 1)],
    # attack limit 4
    [(3, 8) for _ in range(0, 4)],
    # 4/8
    # attack limit 1
    [(4, 8) for _ in range(0, 1)],
    # attack limit 2
    [(4, 8) for _ in range(0, 1)],
    # attack limit 3
    [(4, 8) for _ in range(0, 3)],
    # attack limit 4
    [(4, 8) for _ in range(0, 1)],
    # 5/8
    # attack limit 1
    [(5, 8) for _ in range(0, 1)],
    # attack limit 2,
    [(5, 8) for _ in range(0, 1)],
    # attack limit 3
    [(5, 8) for _ in range(0, 3)],
    # attack limit 4
    [(5, 8) for _ in range(0, 4)],
    # 7/8
    # attack limit 1
    [(7, 8) for _ in range(0, 1)],
    # attack limit 2
    [(7, 8) for _ in range(0, 1)],
    # attack limit 3
    [(7, 8) for _ in range(0, 3)],
    # attack limit 4
    [(7, 8) for _ in range(0, 4)],
]

time_signatures = abjad.sequence.flatten(time_signatures)

score = library.eschaton_score(time_signatures)

# music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=1)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 2, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=2)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 2, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 2, Attack Limit 3" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 2, Attack Limit 4" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=1)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 3, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=2)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 3, Attack Limit 2" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 3, Attack Limit 3" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=4)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 3, Attack Limit 4" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=1)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 4, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=2)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 4, Attack Limit 2" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 18)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 4, Attack Limit 3" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=4)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 4, Attack Limit 4" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (20,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=1)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 5, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=2)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 5, Attack Limit 2" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (22, 24)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 5, Attack Limit 3" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 28)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=4)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 5, Attack Limit 4" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (29,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=1)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 7, Attack Limit 1" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (30,)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=2)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 7, Attack Limit 2" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (31, 33)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=3)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 7, Attack Limit 3" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

trinton.make_music(
    lambda _: trinton.select_target(_, (34, 37)),
    evans.RhythmHandler(rhythm.rhythm_1(index=0, attack_limit=4)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "Meter 7, Attack Limit 4" }"""),
                abjad.Tweak(r"- \tweak font-size 2"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    # preprocessor=trinton.fuse_preprocessor((5, 4, 3, 1))
)

# globals

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
trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #14",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# colophon

# trinton.make_music(
#     lambda _: trinton.select_target(_, (16,)),
#     trinton.attachment_command(
#         attachments=[
#             # abjad.LilyPondLiteral(
#             #     r"\override Staff.TextScript.whiteout = ##f",
#             #     site="before",
#             # ),
#             abjad.bundle(
#                 abjad.Markup(
#                     r"""\markup \fontsize #1 \lower #5 { \hspace #-1.75 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { August - November 2025 } \line { Buffalo - Brooklyn, NY } } }"""
#                 ),
#                 r"- \tweak X-extent ##f",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.DOWN,
#     ),
#     voice=score["cello 2 voice"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (15,)),
#     trinton.attachment_command(
#         attachments=[
#             # abjad.LilyPondLiteral(
#             #     r"\override Staff.TextScript.whiteout = ##f",
#             #     site="before",
#             # ),
#             abjad.bundle(
#                 abjad.Markup(
#                     r"""\markup \fontsize #1 \lower #20 { \hspace #-66.6 \center-column \override #'(font-name . "Bodoni72 Book Italic") { \line { " \". . . The history is held and the context is closer to the burn of what you & I can call " } \line { " \"Knowing " } \line { " \"But we just mean feeling " } \line { " \"To know and be known and to strike against the brush " } \line { " \"The brush that submits to decay in the gutters " } \line { " \"and the gutters, what the American can understand as, the oversaturation, that which the American increasingly comes to know as, the flood." } \line { " \"We will have that flood and we will fear the fire" } \line { " \"I am unable to peel myself from any fire . . .\" " } } }"""
#                 ),
#                 r"- \tweak X-extent ##f",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.DOWN,
#     ),
#     voice=score["cello lower voice"],
# )

# # extract parts
#
# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/etc/rhythm_tests",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/etc/rhythm_tests",
    segment_name="_rhythm_1",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
