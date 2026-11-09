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

# oboe meter

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=1)),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 11)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=4)),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

# saxophone, harp, and guitar meters
## STARTS AT MEASURE 18 NOW ###

for voice_name, eighths, index in zip(
    ["bassclarinet voice", "harp voice", "guitar voice"],
    [
        (4, 2, 5),
        (5, 2, 4),
        (6, 2, 3),
    ],
    [
        1,
        3,
        2,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (18, 28)),
        evans.RhythmHandler(meter.write_meter(index=index, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor(eighths),
    )

# percussion 1 meter


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=1)),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4,)),
)

for voice_name in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (20, 28)),
        evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
        voice=score[voice_name],
        preprocessor=trinton.fuse_eighths_preprocessor((2, 3, 4)),
    )

# violin meter

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=1)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 11)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=4)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 28)),
    evans.RhythmHandler(meter.write_meter(index=1, attack_limit=3)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((7, 4, 2)),
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
    lambda _: trinton.select_target(_, (4, 14)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=2)),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 3, 3)),
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
    lambda _: trinton.select_target(_, (6, 11)),
    rhythm.rhythm_1(stage=1, selector=trinton.logical_ties(pitched=True, grace=False)),
    voice=score["oboe voice"],
)

# clarinet rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=1,
        partitions=[1, 2, 3],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
)

# guitar rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=2,
        partitions=[2, 2, 3, 2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["guitar voice"],
)

# harp rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 28)),
    rhythm.rhythm_5(
        stage=3,
        voice=3,
        partitions=[4, 2, 3],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["harp voice"],
)

# percussion rhythms

for voice_name in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (20, 28)),
        rhythm.rhythm_3(
            instrument="strings",
            fuse_partitions=[2],
            selector=trinton.logical_ties(pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

# violin rhythms

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 11)),
    rhythm.rhythm_1(stage=2, selector=trinton.logical_ties(pitched=True, grace=False)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 28)),
    rhythm.rhythm_3(
        instrument="strings",
        fuse_partitions=[1, 1, 2, 2, 1, 1, 1],
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
    lambda _: trinton.select_target(_, (4, 22)),
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
    replacement_signatures=[
        (4, 8),
        (4, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (5, 8),
        (4, 8),
        (2, 8),
    ],
)

trinton.rewrite_meter(target=score)

# pitching and attachments

# oboe pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_material_5_pitches(index=1)),
    trinton.transpose_command(semitones=16, selector=trinton.pleaves()),
    trinton.respell_with_flats(selector=trinton.pleaves(exclude=[8])),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 5], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 9, 10, 17, 18, 19]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=3),
                abjad.BeamCount(left=3, right=1),
                abjad.BeamCount(left=1, right=2),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=3),
            ]
        ),
        selector=trinton.select_leaves_by_index([3, 4, 7, 8, 11, 12, 13, 14]),
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        index=0,
        peak_multiplier=12,
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([-2], pitched=True, grace=False),
        index=1,
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        index=2,
        hspace=-1,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(r"\slapped", site="before"),
                abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
            ]
        ),
        selector=trinton.select_leaves_by_index([3, 17]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Slap",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [1, 8], pitched=True, first=True, grace=False
        ),
        right_padding=1.5,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Dynamic("f"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 9], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["oboe voice"],
)

# clarinet pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=0)),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 5, 7],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [12, 13],
            pitched=True,
            grace=False,
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     selector=abjad.select.leaves
    #     # selector=trinton.pleaves(grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 8, 9, 13, 14, 19, 20, 24]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
        ],
        selector=trinton.select_leaves_by_index([4, 5, 6, 7, 10, 11, 16, 17, 23]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 7, 17, 21],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [8, 16],
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"1/2 air",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 5]),
        right_padding=-1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"1/2 air",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([10, 15]),
        right_padding=-2.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"1/2 air",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=4.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([20, -1]),
        right_padding=4,
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.pleaves(exclude=[4, 5, 6, 7, 13, 14, 15, 16], grace=False),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["ef'", "b'", "a''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic("ff"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(pitch.return_material_5_pitches(index=2, guitar=True)),
    library.twist_bow_glissandi(partitions=[2, 3]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    r"holding drum brush against keys",
                    r"+ rubbing brush bristles w/ triangle beater",
                ],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["percussion 1 voice"],
    beam_meter=True,
)

# percussion 2 pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(pitch.return_material_5_pitches(index=3, guitar=True)),
    trinton.transpose_command(semitones=19, selector=trinton.pleaves()),
    library.twist_bow_glissandi(partitions=[2, 3]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    r"holding drum brush against keys",
                    r"+ rubbing brush bristles w/ triangle beater",
                ],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["percussion 2 voice"],
    beam_meter=True,
)

# guitar pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(
        pitch_list=pitch.return_material_5_pitches(index=6, guitar=True)
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [10, 11, 20], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(grace=False)
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 4, 5, 6, 7, 8, 10, 18, 19, 24]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([8, 11, 13, 14, 15, 16, 21, 22]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 4, 6, 11, 16, 19], pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(exclude=[5, 12, 13, 14, 15, 20], grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg. + MSP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 6]),
        right_padding=-2.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg. + MSP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([7, 13]),
        right_padding=1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg. + MSP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([19, 23]),
        right_padding=-2.5,
    ),
    voice=score["guitar voice"],
)

# # harp pitching
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[abjad.Markup(r'\markup { \harp-pedal "-v-|^v-^" }')],
#         selector=trinton.select_leaves_by_index([-1]),
#         direction=abjad.UP,
#     ),
#     voice=score["harp voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (4, 6)),
#     evans.PitchHandler(
#         pitch_list=pitch.return_material_5_pitches(index=-10, harp=True)
#     ),
#     # trinton.annotate_leaves_locally(
#     #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
#     # ),
#     trinton.octavation(
#         octave=-3,
#         selector=trinton.select_logical_ties_by_index(
#             [0, 1, 2, 3, 4, 5], pitched=True, grace=False
#         ),
#     ),
#     trinton.octavation(
#         octave=-2,
#         selector=trinton.select_logical_ties_by_index(
#             [6, 7], pitched=True, grace=False
#         ),
#     ),
#     trinton.octavation(
#         octave=-1,
#         selector=trinton.select_logical_ties_by_index(
#             [8, 9, 10], pitched=True, grace=False
#         ),
#     ),
#     trinton.octavation(
#         octave=1,
#         selector=trinton.select_logical_ties_by_index(
#             [13, 15, 16, 17, 18, 19, 20], pitched=True, grace=False
#         ),
#     ),
#     trinton.octavation(
#         octave=2,
#         selector=trinton.select_logical_ties_by_index(
#             [21, 23, 24, 26, 27, 28, 29],
#             pitched=True,
#             grace=False,
#         ),
#     ),
#     trinton.octavation(
#         octave=3,
#         selector=trinton.select_logical_ties_by_index(
#             [22, 25],
#             pitched=True,
#             grace=False,
#         ),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[abjad.Clef("bass"), abjad.Clef("treble")],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 10], first=True, pitched=True, grace=False
#         ),
#     ),
#     trinton.ottava_command(
#         octave=-1, selector=trinton.select_leaves_by_index([0, 5], grace=False)
#     ),
#     trinton.ottava_command(
#         octave=1,
#         selector=trinton.select_leaves_by_index([21, -1], pitched=True, grace=False),
#     ),
#     # trinton.annotate_leaves_locally(selector=trinton.pleaves(grace=False)),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle(
#             [
#                 abjad.StartBeam(),
#                 abjad.StopBeam(),
#             ]
#         ),
#         selector=trinton.select_leaves_by_index(
#             [0, 4, 5, 7, 8, 10, 11, 17, 18, 24, 25, 27, 28, 32, 33, 36]
#         ),
#     ),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle(
#             [
#                 abjad.BeamCount(left=2, right=1),
#                 abjad.BeamCount(left=1, right=3),
#                 abjad.BeamCount(left=3, right=1),
#                 abjad.BeamCount(left=1, right=2),
#                 abjad.BeamCount(left=2, right=1),
#                 abjad.BeamCount(left=1, right=3),
#                 abjad.BeamCount(left=4, right=1),
#                 abjad.BeamCount(left=1, right=4),
#             ]
#         ),
#         selector=trinton.select_leaves_by_index([15, 16, 19, 20, 29, 30, 34, 35]),
#     ),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle(
#             [
#                 abjad.StartSlur(),
#                 abjad.StopSlur(),
#             ]
#         ),
#         selector=trinton.select_leaves_by_index(
#             [0, 1, 2, 7, 8, 13, 14, 20, 21, 26, 27, 31], pitched=True, grace=False
#         ),
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Dynamic("p")],
#         selector=trinton.select_leaves_by_index([0], pitched=True),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"""\markup { \hspace #1 { "legatissimo" } }"""),
#                 abjad.Tweak(r"""- \tweak font-name "Bodoni72 Book Italic" """),
#                 abjad.Tweak(r"- \tweak font-size 0"),
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0], pitched=True),
#         direction=abjad.DOWN,
#     ),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"With nails, very close to the neck",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=10.5,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=2.5,
#     ),
#     voice=score["harp voice"],
# )

# piano pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, -100], 4)),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped"), abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[  # itertools.cycle(
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        # ),
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.PianoPedalBracket.shorten-pair = #'(0 . 2)",
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([3, 2, 3, 3, 3], 16)),
    # trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped"), abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# # violin pitching
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(pitch.return_material_5_pitches(index=4)),
    trinton.transpose_command(semitones=25, selector=trinton.pleaves()),
    trinton.respell_with_sharps(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False)
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 5, 6, 7, 11, 12, 13, 14], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 14, 15, 24, 25, 26]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=3),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [2, 3, 4, 5, 6, 7, 12, 13, 18, 19, 20, 21, 22, 23]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index([8, 9]),
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        index=1,
        peak_multiplier=6,
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([-2], pitched=True, grace=False),
        index=2,
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        index=3,
        hspace=-1,
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves(exclude=[0, -2, -1])
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Pizz.",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [1, 12], pitched=True, first=True, grace=False
        ),
        right_padding=1.5,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Dynamic("f"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 13], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=36, guitar=False, harp=False)
    ),
    trinton.transpose_command(semitones=4),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index(
            [2, -2, -1], pitched=True, grace=False
        )
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("twist-bow"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="slash", selector=trinton.pleaves(grace=False)
    ),
    library.twist_bow_glissandi(partitions=[2]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"w/ loose bow",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Twist on IV",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["violin voice"],
    beam_meter=True,
)

# viola pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=16, guitar=False, harp=False)
    ),
    trinton.transpose_command(semitones=-7),
    trinton.respell_with_sharps(
        selector=trinton.select_logical_ties_by_index([-2], pitched=True, grace=False)
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("twist-bow"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="slash", selector=trinton.pleaves(grace=False)
    ),
    library.twist_bow_glissandi(partitions=[2]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"w/ loose bow",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Twist on IV",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=5.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=4, guitar=False, harp=False)
    ),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("twist-bow"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="slash", selector=trinton.pleaves(grace=False)
    ),
    library.twist_bow_glissandi(partitions=[2, 3, 2]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"w/ loose bow",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Twist on IV",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=5.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

# contrabass pitching

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.PitchHandler(
        pitch.return_material_5_pitches(index=11, guitar=False, harp=False)
    ),
    trinton.octavation(
        octave=-1, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("twist-bow"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="slash", selector=trinton.pleaves(grace=False)
    ),
    library.twist_bow_glissandi(partitions=[2, 2, 3]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"w/ loose bow",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Twist on IV",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["contrabass voice"],
    beam_meter=True,
)

# globals

# title

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=r"II. interpenetration ( i )",
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
    measures=[9],
    fermata="middle-fermata",
    voice_names=[
        "altoflute voice",
        "oboe voice",
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
    padding=-8,
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
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("||", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# breaking

for measure in [1, 3, 5, 7, 8]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [2]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [4, 9]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (6 11 19 22 15 15)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 12 16 15 15 15)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 15 17 24 17 12 16 16)))",
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
#     lambda _: trinton.select_target(_, (5,)),
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
#     lambda _: trinton.select_target(_, (5,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #30",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )
#
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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/02",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    # segment_name="02_form",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
