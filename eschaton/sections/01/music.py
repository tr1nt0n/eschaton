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
                (1, 1, 1),
                (1, 1, 1),
                (1, 1, 1),
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
    trinton.pitch_with_selector_command(
        pitch_list=["ef'", "b'", "a''", "b'"],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8], pitched=True
        ),
    ),
    library.flute_flageolets(
        selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5, 6, 7, 8])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 9]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.BeamCount(left=1, right=3), abjad.BeamCount(left=3, right=1)]
        ),
        selector=trinton.select_leaves_by_index([1, 3, 4, 6, 7]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 8], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic("p"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 0, 2, 2, 4, 4, 6, 6, 8], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([9], pitched=True),
    ),
    voice=score["altoflute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1, 1, 1, 1, 2, 1000)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-4, -1, 6, -2], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler(["a'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([2]),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Bass",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=2,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slow-fast-smorzando", site="before"),
            # abjad.StartTrillSpan(),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([2, -1]),
    ),
    voice=score["altoflute voice"],
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
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([-18, 7, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["eqf"]),
    library.transposition(instrument="bass clarinet"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves()
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
        padding=5.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-3, 2, 4, -4], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler(["gf'", "fqs'"]),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 3, 3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves()
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
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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
                string=r"Crotales w/ hard yarn mallets",
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

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    evans.PitchHandler(["g", "f'"]),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([4, 3, 5, 3, 100], 16)),
        direction=abjad.UP,
        voice_name="windchimes muting voice",
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
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #9 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
        full_string=True,
        padding=2.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, 2, 4, 5], pitched=True),
        right_padding=0,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"f"'),
            abjad.Dynamic("p"),
            abjad.Dynamic('"f"'),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 4]),
    ),
    voice=score["windchimes muting voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=r"Windchimes w/ triangle beater",
                    column="\center-column",
                    font_name="Bodoni72 Book Italic",
                    fontsize=0,
                    string_only=False,
                ),
                abjad.Tweak(r"- \tweak padding 4"),
            ),
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
    voice=score["percussion 2 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([-4, 3, 1, -9, 4, 1, 1, 1, -1000], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["g", "f'"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-34, 3, 2, 3, 1], 32)),
        direction=abjad.UP,
        voice_name="windchimes muting voice 2",
        temp_name="temp 2"
        # preprocessor=trinton.fuse_eighths_preprocessor((8, 10, 8, 11)),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_rests(selector=abjad.select.rests),
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #9 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
        full_string=True,
        padding=2,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        right_padding=0,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #9 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        right_padding=-1.5,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic('"f"'),
                abjad.Dynamic("p"),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3], pitched=True),
    ),
    voice=score["windchimes muting voice 2"],
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
        attachments=[abjad.Articulation("coda")],
        selector=trinton.select_logical_ties_by_index(
            [1, -1], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    voice=score["percussion 2 voice temp 2"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(evans.talea([1], 4)),
    evans.PitchHandler(["f'", "g"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    # trinton.attachment_command(
    #     attachments=[abjad.Dynamic("p")],
    #     selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    # ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.RhythmHandler(
                evans.talea(
                    [6, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, -1000],
                    32,
                    extra_counts=[2, 0],
                )
            ),
        ),
        direction=abjad.UP,
        voice_name="windchimes muting voice 3",
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
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #9 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
        full_string=True,
        padding=3.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 10, 12, 15], first=True, pitched=True, grace=False
        ),
        right_padding=0,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #9 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
        full_string=True,
        padding=3.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [16, -1], first=True, pitched=True, grace=False
        ),
        right_padding=55,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.Dynamic('"f"'),
                abjad.Dynamic("p"),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 10, 12, 15, 16, 17], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["windchimes muting voice 3"],
)


# guitar music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("percussion")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.BarLine.bar-extent = #'(-2.5 . 2.5)",
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"\override Staff.Clef.text = \guitar-stringing-clef",
                    r"\staff-line-count 6",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea([-5, 1000], 8),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["e", "g"]]),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"crossed string rasg., SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=6,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=12,
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
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
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([-1, 100], 8)),
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

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-4, -1, 6, -2], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler(["a'"]),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ rebar, MST",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=9,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([2, 2, 4]),
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1)]),
    ),
    evans.PitchHandler(["ef", "b", "a'", "b", "a'", "ef"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2, 3, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ rebar, SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=9,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 3, 4], pitched=True),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 5, 2, 7)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(-1,), (-1, 4), (-1,)],
            preprocessor=trinton.fuse_quarters_preprocessor((1,)),
            nested_ratios=[(1, 1, 1)],
            triple_nested_ratios=None,
            nested_vectors=None,
            nested_period=None,
            triple_nested_vectors=None,
            triple_nested_period=None,
            extract_trivial_tuplets=True,
            nested_selector=trinton.pleaves(),
            triple_nested_selector=None,
        )
    ),
    evans.PitchHandler(["ef'", "b", "a"]),
    # trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ rebar, SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=13.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=9,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([1, 4]),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([-16, 9, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c,", "a,"]]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stop-on-string")],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ rebar, SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"III + IV",
            column="\center-column",
            font_name="Bodoni72 Book",
            fontsize=1,
            string_only=True,
        ),
        full_string=True,
        padding=6,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="Two",
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-4, -1, 6, -2], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler([["c,", "a,"]]),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ rebar, SP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=11.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"III + IV",
            column="\center-column",
            font_name="Bodoni72 Book",
            fontsize=1,
            string_only=True,
        ),
        full_string=True,
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="Two",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([2, 2, 4]),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([-14, 11, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e,"]),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("stop-on-string"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"IV",
            column="\center-column",
            font_name="Bodoni72 Book",
            fontsize=1,
            string_only=True,
        ),
        full_string=True,
        padding=4.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-2, 3, 6, -2], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler([["e,"]]),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"IV",
            column="\center-column",
            font_name="Bodoni72 Book",
            fontsize=1,
            string_only=True,
        ),
        full_string=True,
        padding=5.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="Two",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 3, 3, -1]),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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

for measure in [
    3,
    5,
    7,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 2, 4, 6, 8]:
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

for measure in [2]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 19 17.5)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5 19)))",
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5 17 14)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )


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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/01",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/eschaton-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
