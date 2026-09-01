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

## INITIAL ##

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.even_division([64])),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(list(range(0, 48)), pitched=True)
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

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    evans.PitchHandler(["g", "f'"]),
    trinton.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
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
        string=r"""\markup \fontsize #8 \override #'(font-name . "ekmelos") { { \char ##xe638 } }""",
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
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-2, 2, -100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    evans.PitchHandler(["g", "f'"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Articulation("coda")],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
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

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1), (-1,)]),
    ),
    evans.PitchHandler(["ef", "b", "a'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"w/ ribbed rebar, SP",
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
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2], pitched=True),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 1, 3)),
    beam_meter=True,
)

## FORM ##

#
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
#
# ## MUSIC ##
#
# # cello music
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (14, 16)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=3)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(pitch_list=["b", "a''"]),
#     trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
#     library.half_note_signifier(),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"Bowing the side of the bridge",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=11,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Dynamic('"pp"')],
#         selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
#     ),
#     voice=score["cello voice"],
#     beam_meter=True,
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (23, 33)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=30)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(
#         [
#             "b",
#             "a''",
#             "b",
#             "a''",
#             "c'",
#             "g''",
#             "c'",
#             "g''",
#             "d'",
#             "f''",
#             "d'",
#             "f''",
#             "d'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "f'",
#             "e''",
#             "f'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#         ]
#     ),
#     trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
#     library.half_note_signifier(),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"Bowing the side of the bridge",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=11,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic('"pp"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"mp"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"mf"'),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 0, 14, 29, 34], first=True, pitched=True
#         ),
#     ),
#     voice=score["cello voice"],
#     beam_meter=True,
# )
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
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 45)),
#     library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
#     voice=score["cello voice"],
# )
#
# # contrabass music
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (14, 16)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=0)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(pitch_list=["b", "a''"]),
#     trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
#     library.half_note_signifier(),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string=r"Bowing the side of the bridge",
#             column="\center-column",
#             font_name="Bodoni72 Book Italic",
#             fontsize=0,
#             string_only=True,
#         ),
#         full_string=True,
#         padding=11,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.attachment_command(
#         attachments=[abjad.Dynamic('"pp"')],
#         selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
#     ),
#     voice=score["contrabass voice"],
#     beam_meter=True,
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (23, 33)),
#     evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=27)),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.aftergrace_command(
#         invisible=True,
#         selector=trinton.select_logical_ties_by_index(
#             [-1], first=True, pitched=True, grace=False
#         ),
#     ),
#     evans.PitchHandler(
#         [
#             "b",
#             "a''",
#             "b",
#             "a''",
#             "c'",
#             "g''",
#             "c'",
#             "g''",
#             "d'",
#             "f''",
#             "d'",
#             "f''",
#             "d'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "e'",
#             "e''",
#             "f'",
#             "e''",
#             "f'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
#             "g'",
#             "d''",
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
#         padding=11,
#         style="dashed-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=0,
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic('"pp"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"mp"'),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic('"mf"'),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 0, 14, 29, 34], first=True, pitched=True
#         ),
#     ),
#     voice=score["contrabass voice"],
#     beam_meter=True,
# )
#
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
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 45)),
#     library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
#     voice=score["contrabass voice"],
# )

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

# for measure in [1, 2]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [1, 2]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [3]:
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
#
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
