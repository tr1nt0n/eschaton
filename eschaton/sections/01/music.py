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

time_signatures = [(3, 2), (5, 4)]

for _ in range(0, 46):
    time_signatures.append((3, 4))

score = library.eschaton_score(time_signatures)

## FORM ##


# def illustrate_instrumentation():
#     measure_partitions = itertools.cycle([2, 4, 5, 2, 1, 2, 4])
#     measure_ranges = []
#
#     measure_counter = 3
#     for partition in measure_partitions:
#         if measure_counter >= 48:
#             break
#         first_measure = measure_counter
#         last_measure = measure_counter + partition
#         last_measure = last_measure - 1
#         measure_range = (first_measure, last_measure)
#         measure_ranges.append(measure_range)
#         measure_counter = last_measure + 1
#
#     voice_amounts = itertools.cycle([3, 1, 2, 2, 2, 3, 1])
#     voice_names = [
#         ["altoflute voice"],
#         ["harp voice", "guitar voice"],
#         ["percussion 1 voice", "percussion 2 voice"],
#         ["bassclarinet voice", "oboe voice"],
#         ["cello voice", "contrabass voice"],
#     ]
#
#     voice_index = 0
#     for measure_range, voice_amount in zip(measure_ranges, voice_amounts):
#         rotated_voice_names = trinton.rotated_sequence(
#             voice_names, voice_index % len(voice_names)
#         )
#         relevant_voice_names = rotated_voice_names[0:voice_amount]
#
#         voice_strings = []
#
#         for voice_list in relevant_voice_names:
#             for voice_name in voice_list:
#                 voice_strings.append(voice_name)
#
#         for voice_string in voice_strings:
#             trinton.make_music(
#                 lambda _: trinton.select_target(_, measure_range),
#                 evans.RhythmHandler(evans.talea([1000], 8)),
#                 voice=score[voice_string],
#             )
#
#         index_rotation = voice_amount - 1
#         voice_index += index_rotation
#
#
# illustrate_instrumentation()
#
# for voice_name, measure, note in zip(
#     [
#         # flute
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "altoflute voice",
#         "harp voice",
#         # percussion 1
#         "percussion 1 voice",
#         "percussion 1 voice",
#         "percussion 1 voice",
#         "percussion 1 voice",
#         "percussion 1 voice",
#         "percussion 1 voice",
#         "percussion 1 voice",
#         # percussion 2
#         "percussion 2 voice",
#         "percussion 2 voice",
#         "percussion 2 voice",
#         "percussion 2 voice",
#         "percussion 2 voice",
#         "percussion 2 voice",
#         # clarinet
#         "bassclarinet voice",
#         "bassclarinet voice",
#         "bassclarinet voice",
#         "bassclarinet voice",
#     ],
#     [
#         # flute
#         3,
#         16,
#         17,
#         30,
#         32,
#         34,
#         35,
#         44,
#         45,
#         # percussion 1
#         3,
#         5,
#         9,
#         19,
#         23,
#         24,
#         37,
#         # percussion 2
#         3,
#         5,
#         9,
#         19,
#         23,
#         37,
#         # clarinet
#         9,
#         14,
#         24,
#         38,
#     ],
#     [
#         # flute
#         "tremolando (static except for quasi klangfarbenmelodie w/ harp + guit.)",
#         "begin trans. to sixteenths",
#         "sixteenths",
#         "begin trans. to eighths",
#         "eighths",
#         "begin trans. to quarters",
#         "quarters",
#         "begin trans. to halves",
#         "halves",
#         # percussion 1
#         "quarters",
#         "begin trans. to eighths",
#         "eighths",
#         "begin trans. to sixteenths",
#         "sixteenths",
#         "this measure is a feather beam to basically a tremolando",
#         "tremolando",
#         # percussion 2
#         "rests",
#         "quarters",
#         "begin trans. to eighths",
#         "eighths",
#         "begin trans. to tremolando",
#         "tremolando",
#         # clarinet
#         "figures",
#         "begin elongating long notes of figures",
#         "swells (always elongating)",
#         "sustained",
#     ],
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.bundle(
#                     abjad.Markup(rf"\markup {{ {note} }}"),
#                     abjad.Tweak(r"- \tweak font-size 4"),
#                 )
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#             direction=abjad.UP,
#         ),
#         voice=score[voice_name],
#     )

## MUSIC ##

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.even_division([64])),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(list(range(0, 48)), pitched=True)
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [-8, -7, -6, -5, -4, -3, -2, -1], pitched=True
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.flute_flageolets(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Alto",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=2,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    library.flute_flageolets(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["altoflute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 1000)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(meter.write_meter(index=2, attack_limit=5)),
    rhythm.rhythm_5(
        stage=3,
        voice=1,
        partitions=[1, 2, 2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 7], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=3)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 5], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([2, -1], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="la", selector=trinton.pleaves(grace=False)
    ),
    library.smorzando(
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
        angles=4,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
        angles=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Air",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 7]),
        right_padding=-1,
    ),
    voice=score["altoflute voice"],
)

# oboe music

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.tuplet([(4, 1, 1), (1, 2, 2, 5)]),
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            ["f''", "cqf'''"],
            ["a''", "d''"],
            ["g''", "d'''"],
            ["a''", "d''"],
            ["g''", "d'''"],
            ["a''", "d''"],
            ["g''", "d'''"],
            ["a''", "d''"],
            ["g''", "d'''"],
            ["a''", "d''"],
            ["g''", "d'''"],
        ]
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, selector=trinton.pleaves()
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[0])),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"\markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (oneRT1h two three four five)) (lh . ()) (rh . ())) }",
        full_string=True,
        padding=11.25,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 13)),
    evans.RhythmHandler(
        evans.tuplet(
            rhythm.return_section_1_figures(instrument="oboe", index=0, stage=1)
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_section_1_oboe_double_harmonics(
        selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    library.attach_oboe_double_harmonic_markups(selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                8,
                9,
                12,
                13,
                16,
                17,
                21,
                22,
                25,
                26,
                29,
                30,
                34,
                35,
                39,
                40,
                43,
                44,
                47,
                48,
                51,
                52,
                55,
                56,
                60,
                61,
                65,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(meter.write_meter(index=2, attack_limit=5)),
    rhythm.rhythm_5(
        stage=1,
        voice=2,
        partitions=[1, 2, 2],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=1)),
    trinton.octavation(octave=-1, selector=trinton.pleaves()),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 5], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"1/2 Air",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 5]),
        right_padding=-1,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 13)),
    evans.RhythmHandler(
        evans.tuplet(
            rhythm.return_section_1_figures(instrument="clarinet", index=0, stage=1)
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e'''"]),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [2, 4, 6], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
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
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Crotales w/ soft yarn mallets",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.RhythmHandler(
        evans.talea(
            [-8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, -1000],
            32,
            extra_counts=[0, 2],
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c'", "df'"]]),
    trinton.pitch_with_selector_command(
        selector=trinton.patterned_tie_index_selector(
            [1, 3], 5, exclude=[0, 1, 2, 3, 4, 5], pitched=True, grace=False
        ),
        pitch_list=[["c'", "df'", "b'"]],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
            ],
            32,
            extra_counts=[0, 1, 1, 0, 2],
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c'", "df'", "b'"]]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                6,
                7,
                10,
                11,
                13,
                14,
                17,
                18,
                21,
                22,
                25,
                26,
                28,
                29,
                32,
                33,
                36,
                37,
                40,
                41,
                43,
                44,
                47,
                48,
                51,
                52,
                55,
            ]
        ),
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 1, 1, 2, 2)),
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    evans.PitchHandler(["f", "f'''"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([4, 3, 5, 3, 100], 16)),
        direction=abjad.UP,
        voice_name="vibraphone muting voice",
        temp_name="temp 1"
        # preprocessor=trinton.fuse_eighths_preprocessor((8, 10, 8, 11)),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"Motor ON", r"( 100% )"],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=6,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 2], pitched=True),
        right_padding=0,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Motor ON",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=4,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        right_padding=0,
    ),
    voice=score["vibraphone muting voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            # abjad.bundle(
            trinton.boxed_markup(
                string=[r"Vibraphone", r"w/ soft yarn mallets"],
                column="\column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
            #     abjad.Tweak(r"- \tweak padding 5.5"),
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([-4, 3, 1, -9, 4, 1, 1, 1, -1000], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["f", "f'''"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-34, 3, 2, 3, 1], 32)),
        direction=abjad.UP,
        voice_name="vibraphone muting voice 2",
        temp_name="temp 2",
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_rests(selector=abjad.select.rests),
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
        selector=trinton.select_leaves_by_index([1, 2], pitched=True),
        right_padding=0,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Motor ON",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([5, 6]),
        right_padding=14,
    ),
    voice=score["vibraphone muting voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #0", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 40%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 5], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Motor ON",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        right_padding=2,
    ),
    voice=score["percussion 2 voice temp 2"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(evans.talea([1], 4)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.RhythmHandler(
                evans.talea(
                    [
                        6,
                        8,
                        8,
                        8,
                        8,
                        8,
                        7,
                        7,
                        7,
                        7,
                        6,
                        6,
                        6,
                        6,
                        5,
                        5,
                        5,
                        4,
                        4,
                        4,
                        4,
                        4,
                        4,
                        -1000,
                    ],
                    32,
                    extra_counts=[2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0],
                )
            ),
        ),
        direction=abjad.UP,
        voice_name="vibraphone muting voice 3",
        temp_name="temp 3",
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_rests(selector=abjad.select.rests),
    trinton.invisible_tuplet_brackets(),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Motor ON",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 11, 12, 15, 18], first=True, pitched=True, grace=False
        ),
        right_padding=0,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 80%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [15, 18], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=9.75,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    voice=score["vibraphone muting voice 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(["f'''", "f"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 6]),
        direction=abjad.UP,
    ),
    voice=score["percussion 2 voice temp 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(
        evans.talea([8, 8, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5], 32)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                    4,
                ],
                32,
                extra_counts=[2, 0],
            )
        ),
        direction=abjad.UP,
        voice_name="vibraphone muting voice 4",
        temp_name="temp 4",
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_rests(selector=abjad.select.rests),
    trinton.invisible_tuplet_brackets(),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Motor ON",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [3, 12, 15, 18, 24, 25], first=True, pitched=True, grace=False
        ),
        right_padding=0,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 80%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 12], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=10.25,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 80%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 10%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [15, 17, 17, 18], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=10.25,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["vibraphone muting voice 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(["f", "f'''"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["percussion 2 voice temp 4"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 20%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["percussion 2 voice temp 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
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
    voice=score["percussion 2 voice temp 4"],
)


# guitar music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.talea([-5, 1000], 8),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["ef'''", "b''", "a''", "ef''"]]),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"rasg., SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    voice=score["guitar voice"],
)


# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-3, 100], 8)),
    evans.PitchHandler([["es''''", "f''''"]]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ triangle beater between strings",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=3,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(evans.talea([-1, 14, -1000], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["es''''", "f''''"]]),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ triangle beater between strings",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=3,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["harp voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([8, 1, 2, 1, -2, 2, -2, 2, -4], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(meter.write_meter(index=2, attack_limit=5)),
    rhythm.rhythm_3(
        instrument="piano",
        # fuse_partitions=[2, 3, 3, 2],
        # selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 5, 6, 8, 9, 12, 13, 15, 16, 19]),
    ),
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
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">"), abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0, 6, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal("corda"),
            abjad.StopPianoPedal("corda"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["piano 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (-2, 3), (4, 1, 1), (6, 2, 1, 1), (3, 2, 1, 1), (-1,)]),
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "eqf'",
            ["eqf'", "df'"],
            ["f''", "e''"],
            ["d''", "c''"],
            ["g''", "f''"],
            ["g'''", "f'''"],
            ["e'''", "d'''"],
            ["b'''", "a'''"],
            ["g'''", "f'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, 7, 8, -1], pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, selector=trinton.pleaves(exclude=[0])
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([1], pitched=True, grace=False)
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[0, 1])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, 4], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"IV", r"MST"],
            column="\column",
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
    voice=score["violin voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 1, 1, 1, 2)),
    beam_meter=True,
)

# viola music

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
#     ),
#     voice=score["viola voice"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.tuplet(
            [(-1,), (-2, 3), (1, 1, 1, 3), (1, 2, 2, 5), (1, 1, 1, 2, 2), (-1,)]
        ),
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "eqf'",
            ["eqf'", "df'"],
            ["f''", "e''"],
            ["d''", "c''"],
            ["g''", "f''"],
            ["g'''", "f'''"],
            ["e'''", "d'''"],
            ["b'''", "a'''"],
            ["g'''", "f'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
            ["e''''", "d''''"],
            ["b'''", "a'''"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 4, 5, 9, 10, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, selector=trinton.pleaves(exclude=[0])
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, 1])),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([1], pitched=True, grace=False)
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[0, 1])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, 5], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"III", r"MST"],
            column="\column",
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
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 6, 7, 11, 12, -1], grace=False),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 1, 1, 1, 2)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([-1, 3, -1, 5, -1, 5, -1, 3, -1, 3], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    evans.PitchHandler(pitch_list=["a''", "b"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    library.half_note_signifier(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 9, 11, 15, 17, 21, 22, 26, 28, 32]
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Bowing the side of the bridge",
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
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 16)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(pitch_list=["b", "a''"]),
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 33)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (37, 44)),
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
    lambda _: trinton.select_target(_, (14, 45)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["cello voice"],
)

# contrabass music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        evans.talea([-2, 3, -1, 5, -1, 5, -1, 3, -1, 3, -2, 3, -1, 5, -1000], 32)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    evans.PitchHandler(pitch_list=["a''", "b"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    library.half_note_signifier(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 5, 6, 9, 10, 17, 18, 25, 26, 28]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Bowing the side of the bridge",
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
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 16)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(pitch_list=["b", "a''"]),
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["contrabass voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (23, 33)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (37, 44)),
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
    lambda _: trinton.select_target(_, (14, 45)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["contrabass voice"],
)

# globals

# title

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=r"I. Back. ( ii )",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=4,
                tempo=72,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=4,
                tempo=48,
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
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            abjad.BarLine(":|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text " ×7 " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (48,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("||", site="after")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# breaking

for measure in [3, 5]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 4, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [1]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 6]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 19 17 19)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4.5 17 28 15)))",
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
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 13 15 17 21 15)))",
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
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #16",
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
#     lambda _: trinton.select_target(_, (5,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 22 17 24 16)))",
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
#     lambda _: trinton.select_target(_, (7,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 26 26 26 26 26 26)))",
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
#     lambda _: trinton.select_target(_, (7,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #22",
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
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 24 24 24 24 24 24 24 24)))",
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
#                 r"- \tweak padding #16",
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
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 24 22 20 24 24 22 20 20 20)))",
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
#     lambda _: trinton.select_target(_, (10,)),
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
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (12,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 24 20 20 22 25 22 20)))",
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
#     lambda _: trinton.select_target(_, (12,)),
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
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (13,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 17 15 16 23 18)))",
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
#     lambda _: trinton.select_target(_, (13,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #12",
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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/01",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/eschaton-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
