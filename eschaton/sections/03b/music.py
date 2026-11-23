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

score = library.eschaton_score([(1, 8) for _ in range(36)])

# form annotations

# library.annotate_form(
#     voice=score["altoflute voice"], material=5, stage=2, measure_range=(1, 35)
# )
#
# library.annotate_form(
#     voice=score["altoflute voice"], material=4, stage=1, measure_range=(36, 106)
# )
#
# library.annotate_form(
#     voice=score["altoflute voice"], material=2, stage=3, measure_range=(107, 159)
# )
#
# library.annotate_form(
#     voice=score["altoflute voice"], material=3, stage=2, measure_range=(160, 212)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=5, stage=2, measure_range=(1, 71)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=1, stage=1, measure_range=(72, 106)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=2, stage=3, measure_range=(107, 195)
# )
#
# library.annotate_form(
#     voice=score["oboe voice"], material=5, stage=2, measure_range=(196, 212)
# )

## FORM NOTES ##

# mm 1 - 11 harmonic glissandi start QUIET as clicks with little glissando tails that grow
# longer and louder as the clicks become sparser and quieter
# mm 12 - 36 Once the glissandi are in full force, raise in pitch (moaning contour) while diminishing in volume
# ^^^ GRADUALLY BECOME HOMORHYTHMIC W FIGURES AND EACH OTHER SO THEY CAN BE
# HOMORHYTHMIC WITH VIBRATO STUFF LATER ON

# meter

# figures meter

# mm 1 - 11 polyphonic and unpredictable length

for voice_name, divisions, index in zip(
    ["altoflute voice", "bassclarinet voice", "contrabass voice"],
    [(4, 7), (4, 3, 4), (7, 4)],
    [2, 1, 2],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(divisions),
    )

# mm 12 - 24 heterophonic, elongating, raising in pitch

## NOTE: for heterophony, when choosing your partitions, tier the instruments
## according to density per division and never allow all instruments to have the
## same density

for voice_name in [
    "viola voice",
    "altoflute voice",
    "bassclarinet voice",
    "violin voice",
    "cello voice",
    "contrabass voice",
    "percussion 1 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((3, 4, 6)),
    )

# mm 25 - 36 homophonic, very long, very high

for voice_name in [
    "oboe voice",
    "viola voice",
    "percussion 1 voice",
    "violin voice",
    "cello voice",
    "contrabass voice",
    "bassclarinet voice",
    "altoflute voice",
    "percussion 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (25, 36)),
        evans.RhythmHandler(meter.write_meter(index=0, attack_limit=1)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_sixteenths_preprocessor((7, 7, 10)),
    )

# click meter

for voice_name, divisions, index in zip(
    ["piano 1 voice", "percussion 2 voice", "viola voice"],
    [(4, 7), (4, 3, 4), (7, 4)],
    [2, 1, 2],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(divisions),
    )

# harmonic glissandi meter

for voice_name, divisions, index in zip(
    ["violin voice", "cello voice", "percussion 1 voice"],
    [(4, 7), (4, 3, 4), (7, 4)],
    [2, 1, 2],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(divisions),
    )

# rhythms

# harmonic glissandi rhythms

for voice_name, stage in zip(
    ["percussion 1 voice", "violin voice", "cello voice"], [1, 3, 2]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        rhythm.rhythm_1(stage=stage, invert_rest=True),
        voice=score[voice_name],
    )

    measure_selector = lambda _: trinton.select_target(_, (1, 11))

    measures = measure_selector(score[voice_name])

    for logical_tie in abjad.select.logical_ties(measures, pitched=True):
        tie_duration = abjad.get.duration(
            abjad.select.leaves(logical_tie), preprolated=True
        )
        tuplet = rmakers.tuplet([tie_duration], [(1, 1)])
        abjad.mutate.replace(logical_tie, tuplet)

    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        rmakers.rewrite_dots,
        rmakers.rewrite_sustained,
        trinton.respell_tuplets_command(rewrite_brackets=False),
        rmakers.trivialize,
        rmakers.extract_trivial,
        trinton.respell_tuplets_command(rewrite_brackets=False),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    trinton.respell_tuplets_by_hand(tuplets=[0, 1], multipliers=[(8, 9), (8, 9)]),
    voice=score["violin voice"],
)

for voice_name in ["percussion 1 voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        rhythm.rhythm_3(
            instrument="strings",
            fuse_partitions=[2, 1],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

for voice_name in ["violin voice", "contrabass voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        rhythm.rhythm_3(
            instrument="strings",
            fuse_partitions=[1, 2],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

for voice_name, stage in zip(
    ["violin voice", "contrabass voice", "percussion 1 voice", "cello voice"],
    itertools.cycle([1, 2]),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        rhythm.rhythm_1(stage=stage, invert_rest=True),
        voice=score[voice_name],
    )

    measure_selector = lambda _: trinton.select_target(_, (12, 24))

    measures = measure_selector(score[voice_name])

    for logical_tie in abjad.select.logical_ties(measures, pitched=True):
        tie_duration = abjad.get.duration(
            abjad.select.leaves(logical_tie), preprolated=True
        )
        tuplet = rmakers.tuplet([tie_duration], [(1, 1)])
        abjad.mutate.replace(logical_tie, tuplet)

    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        rmakers.rewrite_dots,
        rmakers.rewrite_sustained,
        trinton.respell_tuplets_command(rewrite_brackets=False),
        rmakers.trivialize,
        rmakers.extract_trivial,
        trinton.respell_tuplets_command(rewrite_brackets=False),
        voice=score[voice_name],
    )

# figure rhythms

for voice_name, voice_count, partitions in zip(
    [
        "altoflute voice",
        "bassclarinet voice",
        "contrabass voice",
    ],
    [2, 1, 3],
    [[2, 2, 3], [3, 5, 1], [3, 3]],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        rhythm.rhythm_5(
            stage=3,
            voice=voice_count,
            partitions=partitions,
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

abjad.mutate.replace(
    abjad.select.tuplet(score["contrabass voice"], 2),
    abjad.Tuplet("7:5", "c'8 c'8 ~ c'32 c'8 ~ c'32"),
)

abjad.mutate.replace(
    abjad.select.tuplet(score["contrabass voice"], 3),
    abjad.Tuplet("7:5", "c'8 ~ c'32 r8 r32 c'8"),
)

for voice_name, voice_count, partitions in zip(
    [
        "viola voice",
        "altoflute voice",
        "bassclarinet voice",
    ],
    [1, 2, 3],
    [[3, 2, 1], [1, 3, 2], [2, 3, 1]]
    # [[3, 2, 1], [3, 2, 1], [3, 2, 1]]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 24)),
        rhythm.rhythm_5(
            stage=3,
            voice=voice_count,
            partitions=partitions,
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

for voice_name, voice_number in zip(
    [
        "oboe voice",
        "viola voice",
        "percussion 1 voice",
        "violin voice",
        "cello voice",
        "contrabass voice",
        "bassclarinet voice",
        "altoflute voice",
        "percussion 2 voice",
    ],
    itertools.cycle([2, 1, 3]),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (25, 36)),
        rhythm.rhythm_5(
            stage=3,
            voice=voice_number,
            partitions=[3],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

# click rhythms

for voice_name in ["piano 1 voice", "percussion 2 voice", "viola voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 11)),
        rhythm.rhythm_3(
            instrument="piano",
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(divisions),
    )


# rewrite time signatures

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(1, 36),
    replacement_signatures=[
        (4, 8),
        (3, 8),
        (4, 8),
        (5, 8),
        (5, 8),
        (3, 8),
        (7, 16),
        (7, 16),
        (5, 8),
    ],
)

trinton.rewrite_meter_without_splitting(target=score)

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

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

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
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.tempo_markup(
#                 note_value=16,
#                 tempo=120,
#                 padding=10.5,
#                 note_head_fontsize=0.5,
#                 stem_length=1.5,
#                 text_fontsize=5.5,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=2,
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

# for measure in [1, 2, 3, 5, 6]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [4, 7]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# for measure in [4]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

# for measure in [11]:
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
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 30 30 25 25 25 25)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

for measure in [1, 3, 5, 7, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.bundle(
                    abjad.Markup(r"\markup { S }"),
                    r"- \tweak transparent ##t",
                    r"- \tweak padding #18",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (11,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/80)",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/40)",
#                 site="absolute_after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
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

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/03b",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="03b",
    # segment_name="03",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
