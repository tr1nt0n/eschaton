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

score = library.eschaton_score([(1, 8) for _ in range(35)])

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

# meter

# homophonic, irregular division sizes

for voice_name in ["oboe voice", "violin voice", "percussion 1 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 10)),
        evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((1, 3, 1, 5)),
    )

# homophonic, large division sizes

for voice_name in ["oboe voice", "violin voice", "guitar voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (11, 14)),
        evans.RhythmHandler(meter.write_meter(index=0, attack_limit=1)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((4,)),
    )

# heterophonic, large division sizes

for voice_name in ["violin voice", "guitar voice", "bassclarinet voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (15, 21)),
        evans.RhythmHandler(meter.write_meter(index=0, attack_limit=1)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((3, 4)),
    )

# heterophonic, diminishing division sizes

for voice_name in ["guitar voice", "bassclarinet voice", "altoflute voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (22, 30)),
        evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((4, 3, 2)),
    )

# polyphonic, diminishing division sizes

for voice_name, index in zip(
    ["altoflute voice", "bassclarinet voice", "contrabass voice"],
    [1, 2, 3],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (31, 33)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=4)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (34, 35)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((2,)),
    )

# rhythms

for voice_name in ["oboe voice", "violin voice", "percussion 1 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 10)),
        rhythm.rhythm_5(
            stage=1,
            voice=1,
            partitions=[2, 3, 2, 1],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

for voice_name, voice_number in zip(
    ["violin voice", "guitar voice", "bassclarinet voice"], [1, 3, 2]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (15, 21)),
        rhythm.rhythm_5(
            stage=2,
            voice=voice_number,
            partitions=[2],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

for voice_name, voice_number in zip(
    ["guitar voice", "bassclarinet voice", "altoflute voice"], [3, 1, 2]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (22, 30)),
        rhythm.rhythm_5(
            stage=2,
            voice=voice_number,
            partitions=[3, 4, 2],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

for voice_name, voice_number, partitions in zip(
    ["altoflute voice", "bassclarinet voice", "contrabass voice"],
    [1, 2, 3],
    [
        [2, 3, 2],
        [3, 4],
        [3, 4],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (31, 35)),
        rhythm.rhythm_5(
            stage=3,
            voice=voice_number,
            partitions=partitions,
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        trinton.fuse_tuplet_rests_command(),
        voice=score[voice_name],
    )

# rewrite time signatures

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(1, 35),
    replacement_signatures=[
        (5, 16),
        (5, 16),
        (5, 16),
        (5, 16),
        (4, 8),
        (3, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (2, 8),
    ],
)

trinton.rewrite_meter(target=score)

# pitching and attachments

# oboe pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=36, guitar=False, harp=False)
    ),
    trinton.octavation(octave=2, selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 7, 9], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 9, 10, 13]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 6, 8], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([11]),
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [0],
            pitched=True,
            first=True,
            grace=False,
        ),
        angles=1,
        padding=0,
        direction=abjad.UP,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [2],
            pitched=True,
            first=True,
            grace=False,
        ),
        angles=3,
        padding=0,
        direction=abjad.UP,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [4],
            pitched=True,
            first=True,
            grace=False,
        ),
        angles=4,
        padding=0,
        direction=abjad.UP,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [6],
            pitched=True,
            first=True,
            grace=False,
        ),
        angles=3,
        padding=0,
        direction=abjad.UP,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [9],
            pitched=True,
            first=True,
            grace=False,
        ),
        angles=12,
        padding=0,
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves(exclude=[-3, -2])
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, 7], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, first=True
        ),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Dynamic("mp"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 8, 9], first=True, pitched=True
        ),
    ),
    voice=score["oboe voice"],
)

# clarinet pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    evans.PitchHandler(pitch.return_material_5_pitches(index=0)),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 28, 31, 34, 38, 42], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 5, 6, 8, 9, 10, 12, 13, 14, 15, 16], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [7, 11, 17, 18], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            list(range(19, 43)), pitched=True, grace=False
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Clef("bass")
    #     ],
    #     selector=trinton.select_logical_ties_by_index([6], first=True, pitched=True, grace=False)
    # ),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     # selector=trinton.pleaves(grace=False)
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                4,
                6,
                7,
                9,
                10,
                12,
                13,
                16,
                17,
                20,
                21,
                24,
                25,
                28,
                29,
                30,
                31,
                35,
                36,
                38,
                39,
                45,
                46,
                49,
                50,
                56,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                7,
                10,
                15,
                17,
                21,
                24,
                29,
                30,
                31,
                32,
                34,
                36,
                37,
                39,
                41,
                46,
                48,
                53,
                55,
                56,
            ],
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([26, 27, 32, 33, 41, 42, 53, 54]),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.pleaves(exclude=[0, 9, 10, 11, 19, 20, 26, 27, 28]),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(exclude=[0, 9, 10, 11, 19, 20, 26, 27, 28])
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air + fluttertongue",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=12,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 8], pitched=True, grace=False),
        right_padding=1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air + fluttertongue",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=14.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([12, 18], pitched=True, grace=False),
        right_padding=1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air + fluttertongue",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=12.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([21, 25], pitched=True, grace=False),
        right_padding=1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="1/2 air + fluttertongue",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([29, 42], pitched=True, grace=False),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic("mp"), abjad.Dynamic("pp")]),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 9, 12, 19, 21, 26, 29], first=True, pitched=True
        ),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=36, guitar=True, harp=False)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 9, 10, 13]),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(exclude=[9, 10])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 6, 8], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([11]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index([0, 8], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(
            exclude=[-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"rub w/ drum brush",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
            trinton.boxed_markup(
                string=r"strike w/ wood of drum brush",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    voice=score["percussion 1 voice"],
)

# guitar pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 10)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=44, guitar=True, harp=False)
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 5, 11, 18, 19, 20], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [8, 14, 15], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.pleaves(grace=False)
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [5, 7, 8, 10, 11, 14, 15, 18, 19, 22, 23, 26, 27, 30, 31, 32]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([28, 29]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [4, 7, 14, 17], pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(exclude=[1, 10, 11, 12, 20, 21], grace=False)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg.",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1]),
        right_padding=-2.5,
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg.",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=15,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([4, 17]),
        right_padding=-1.5,
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg.",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=16.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([21, 30]),
        right_padding=4,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Ord.",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"MSP",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
        style="solid-line-with-arrow",
        padding=7.5,
        right_padding=-7.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"MSP",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"ST",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"MSP",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([4, 9, 9, 15]),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=-1,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"MSP",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"MST",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([21, 30]),
        style="solid-line-with-arrow",
        padding=13.5,
        right_padding=-1,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic("pp"), abjad.Dynamic("mp")]),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 10, 13, 20], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["guitar voice"],
)

# violin pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=37, guitar=False, harp=False)
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.logical_ties(
            exclude=[-4, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [8, 9], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 6, 7], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 9, 10, 13]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 6, 8], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([11]),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.logical_ties(exclude=[8, 10], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.Articulation("punta-to-talon"), abjad.Articulation("talon-to-punta")]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 6, 9, 11], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="MST",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 14]),
        right_padding=-2,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="MST",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([18, 19]),
        right_padding=-2,
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="MST",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([-2, -1]),
        right_padding=1,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic("pp"), abjad.Dynamic("mp")]),
        selector=trinton.select_logical_ties_by_index(
            [0, 8, 9, 10, 11], first=True, pitched=True
        ),
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
                    string=r"III. wait.",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=16,
                tempo=120,
                padding=10.5,
                note_head_fontsize=0.5,
                stem_length=1.5,
                text_fontsize=5.5,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=2,
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

for measure in [1, 2, 3, 5, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [4, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [4]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 30 30)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 30 30 30)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/03a",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="03a",
    # segment_name="03",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
