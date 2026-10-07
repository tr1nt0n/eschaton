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

time_signatures = [(3, 4) for _ in range(0, 9)]

score = library.eschaton_score(time_signatures)

## MUSIC ##

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 64)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando([(1, 64), (1, 16), (1, 64)])
        ),
        selector=trinton.select_leaves_by_index(list(range(24, 48))),
    ),
    trinton.invisible_tuplet_brackets(),
    library.flute_flageolets(
        selector=trinton.pleaves(exclude=list(range(24, 37))), ottava=False
    ),
    library.flute_flageolets(
        selector=trinton.select_leaves_by_index(list(range(24, 37))),
        ametric=False,
        ottava=False,
    ),
    trinton.call_rmaker(rmaker=rmakers.beam, selector=abjad.select.tuplets),
    library.left_beam(),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {16} #1.75 } }""",
            r"\markup {}",
        ],
        selector=trinton.select_logical_ties_by_index(
            [24, -1], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        right_padding=4,
        direction=None,
        full_string=True,
        command="One",
    ),
    voice=score["altoflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 1, 1, -3, 1, 1, 1, 1, -5, 1, 1, 1, 1, 1, -2], 16)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.flute_flageolets(
        selector=trinton.pleaves(),
        ametric=False,
    ),
    voice=score["altoflute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([1], 32, extra_counts=[1], treat_tuplets=False)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.rewrite_meter_command(boundary_depth=-1),
    rmakers.duration_bracket,
    evans.PitchHandler(
        [
            "b'",
            "b''",
            "fs'''",
            "b'''",
            "ds''''",
            "fs''''",
            "aqs''''",
            "b''''",
            "cs'''''",
            "b''''",
            "aqs''''",
            "fs''''",
            "ds''''",
            "b'''",
            "fs'''",
            "b''",
        ]
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.pitched_selector(
            pitches=[
                "b''",
                "fs'''",
                "b'''",
                "ds''''",
                "fs''''",
                "aqs''''",
                "b''''",
                "cs'''''",
            ],
            octave_specific=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 15, 16, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic('"p"'), abjad.Dynamic('"ff"')]),
        selector=trinton.patterned_leaf_index_selector(
            [0, 8], 16, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartHairpin("<"), abjad.StartHairpin(">")]),
        selector=trinton.patterned_leaf_index_selector(
            [0, 8], 16, pitched=True, grace=False, exclude=[-1]
        ),
    ),
    library.bracket_grace_command(),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Bass",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True),
        direction=abjad.UP,
    ),
    voice=score["altoflute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 8, 100)),
    beam_meter=True,
)

# oboe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent="long", index=0, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_section_1_oboe_double_harmonics(
        selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    library.attach_oboe_double_harmonic_markups(
        selector=trinton.pleaves(), right_padding=6
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                8,
            ]
        ),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 5], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["g''", "d'''"], ["d''", "a''"], ["a''", "e'''"]],
        selector=trinton.pleaves(grace=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([2, 3, 5, 6, 7, 8], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("ppp")],
        selector=trinton.select_logical_ties_by_index(
            [2, 4], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7, 12)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        meter.write_meter(
            index=0,
            attack_limit=8,
        ),
    ),
    voice=score["oboe voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        meter.write_meter(
            index=3,
            attack_limit=5,
        ),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        meter.write_meter(
            index=4,
            attack_limit=5,
        ),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    rhythm.rhythm_1(
        stage=1,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    rhythm.rhythm_1(
        stage=2,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    rhythm.rhythm_1(
        stage=3,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4], pitched=True, grace=False
        )
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.PitchHandler(["ef'''"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["b'"]],
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    #     # trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 6, 17, 20, 21, 22, 23, 24, 25, 26], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Dynamic("f"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 7], pitched=True, first=True, grace=False
        ),
    ),
    library.vibrato_spanner(
        selector=trinton.logical_ties(
            exclude=[0, 1, 2, 8, 9, 4, 5, 6], pitched=True, grace=False
        ),
        index=10,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(r"\slapped", site="before"),
                abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 3, 8, -1], pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [3, -3, -2, -1], pitched=True, grace=False
        )
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
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
        selector=trinton.select_logical_ties_by_index([2, 6], first=True, grace=False),
        right_padding=1.5,
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
            [18, 21], first=True, grace=False
        ),
        right_padding=-1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["Slap attack", "+ hold pitch"],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=16,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, grace=False),
        right_padding=-1.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["Slap attack", "+ hold pitch"],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=16,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [-6, -1], first=True, pitched=True
        ),
        right_padding=0.5,
    ),
    voice=score["oboe voice"],
)


# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent=None, index=0, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e'''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 11, 15, 17]),
    ),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.durational_selector(
            durations=[abjad.Duration(1, 16), abjad.Duration(1, 32)],
            preselector=abjad.select.logical_ties,
            preprolated=True,
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("ppp")],
        selector=trinton.select_logical_ties_by_index(
            [5, 10], first=True, pitched=True, grace=False
        ),
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
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7, 12)),
    # beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.talea([-2, 4, 2, -100], 4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["ef,", "ef'''"]]),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    trinton.artificial_harmonics(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["bassclarinet voice"],
)

# percussion 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
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
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                -1000,
            ],
            32,
            extra_counts=[
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                1,
                1,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
            ],
        )
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c'", "df'", "b'"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            1,
            1,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.pitch_with_selector_command(
        selector=trinton.patterned_tie_index_selector(
            [1, 3], 5, pitched=True, grace=False
        ),
        pitch_list=[["c'", "df'", "a'", "b'"]],
    ),
    voice=score["percussion 1 voice"],
)

# percussion 2 music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(evans.talea([1], 8)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
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
                    3,
                    4,
                    3,
                    4,
                    3,
                    4,
                    3,
                    4,
                    3,
                    4,
                    3,
                    4,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    3,
                    -1000,
                ],
                32,
                extra_counts=[
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    1,
                    1,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                    0,
                    2,
                ],
            )
        ),
        direction=abjad.UP,
        voice_name="vibraphone muting voice",
        temp_name="temp 1",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                1,
                1,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
            )
        ),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
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
        selector=trinton.select_logical_ties_by_index(
            [7, 21, 37], first=True, pitched=True
        ),
        direction=abjad.UP,
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
        selector=trinton.select_logical_ties_by_index(
            [9, 13, 18, 20, 23, 33, 39, 44], first=True, pitched=True
        ),
        right_padding=0,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 100%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 30%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [9, 13], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 100%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 30%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [23, 33], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"Motor 100%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"Motor 30%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [39, 44], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
    ),
    voice=score["vibraphone muting voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(["f", "f'''"]),
    trinton.continuous_glissando(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["percussion 2 voice temp 1"],
    beam_meter=True,
)

# guitar music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.tuplet([(-1,), (1, 1, 1), (-1,), (3, 3, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["ef'''", "b''", "a''", "ef''"]]),
    trinton.pitch_with_selector_command(
        pitch_list=[["e''", "b'", "g'", "d'"]],
        selector=trinton.select_logical_ties_by_index([4], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("open")],
        selector=trinton.select_logical_ties_by_index(
            [4], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, -1], pitched=True, grace=False
        ),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(exclude=[4], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
        padding=16,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1]),
        right_padding=-0.5,
        command="Two",
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"""\markup { \override #'(font-size . -4) { \note {16} #1.75 } }""",
        ],
        selector=trinton.select_logical_ties_by_index([1, 4], first=True, grace=False),
        style="solid-line-with-arrow",
        padding=12.5,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-size . -4) { \note {16} #1.75 } }""",
        full_string=True,
        padding=14,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([10, 13]),
        right_padding=-0.5,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"SP",
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
            trinton.boxed_markup(
                string=r"SP",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 3, 3, 5, 5, 7], grace=False),
        style="solid-line-with-arrow",
        padding=9,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="Three",
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=r"MST",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=True,
            ),
            trinton.boxed_markup(
                string=r"SP",
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
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 4, 5], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["guitar voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((1, 6, 6, 7, 100)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    -1,
                    1,
                ),
                (-1,),
                (-1, 4),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([["ef'''", "b''", "a''", "ef''"]]),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"fff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer()],
        selector=trinton.logical_ties(last=True, pitched=True, grace=False),
    ),
    voice=score["guitar voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        evans.talea([-6, 6, -7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 16),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando([(1, 64), (1, 16), (1, 64)])
        ),
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["es''''", "f''''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 12, 13, -1], pitched=True),
    ),
    trinton.call_rmaker(rmaker=rmakers.beam, selector=abjad.select.tuplets),
    library.left_beam(),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {16} #1.75 } }""",
            r"\markup {}",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 12], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=14.5,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["harp voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(-3, 2), (-1,), (-3, 7)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            [
                "a'''",
                "b'''",
                "ds''''",
                "e''''",
                "f''''",
            ]
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 3, 4]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"fff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer()],
        selector=trinton.logical_ties(last=True, pitched=True, grace=False),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=0)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 6, 8, 9, 11, 12, 14, 16, 17, 18], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves
    # ),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 8, 9, 12, 13, 16, 17, 20]),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal("corda"),
            abjad.StopPianoPedal("corda"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index([6, 9, 20, 22], grace=False),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([1, -3], 16)),
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                4,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                3,
                -1000,
            ],
            32,
            extra_counts=[
                0,
                1,
                1,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
                0,
                2,
            ],
        )
    ),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
    ),
)

for measure, selections in zip(
    [6, 7, 8, 9],
    [
        [0, 1, 2, 3, 5, 6, 7],
        [0, 1, 3, 5, 6, 7],
        [1, 3, 5, 7],
        [3, 5],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.force_rest(
            selector=trinton.patterned_tie_index_selector(
                selections, 8, pitched=True, grace=False
            ),
        ),
        voice=score["piano 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 3, 8, 11, 13, 16, 17, 20, 21, 24, 25, 28, 29, 32, 33, 36]
        ),
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped"), abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [0, 2, 3, 5, 6, 7], 8, first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.patterned_tie_index_selector(
            [0, 2, 3, 5, 6, 7], 8, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic('"fff"'), abjad.Dynamic("p")]),
        selector=trinton.patterned_tie_index_selector(
            [1, 2, 4, 5], 8, first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal("corda"),
            abjad.StopPianoPedal("corda"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 6, 8, 14, 15, 23, 24, 29, 30], first=True, grace=False
        ),
    ),
    voice=score["piano 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        meter.write_meter(
            index=0,
            attack_limit=8,
        ),
    ),
    voice=score["violin voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        meter.write_meter(
            index=4,
            attack_limit=5,
        ),
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        meter.write_meter(
            index=4,
            attack_limit=5,
        ),
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    rhythm.rhythm_1(
        stage=1,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    rhythm.rhythm_1(
        stage=3,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    rhythm.rhythm_1(
        stage=2,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4], pitched=True, grace=False
        )
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.PitchHandler(["ef'''"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["a'", "aqs'"]],
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6], pitched=True, grace=False
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([19], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Dynamic("f"), abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 7], pitched=True, first=True, grace=False
        ),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([6], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 8, 9], pitched=True, grace=False
        ),
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
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, 2], pitched=True, first=True, grace=False
        ),
        right_padding=1.5,
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
        padding=8,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [18, 21], first=True, grace=False
        ),
        right_padding=-0.5,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Senza vib.",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9.75,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index([4, 7], pitched=True, first=True),
        right_padding=0,
    ),
    library.vibrato_spanner(
        selector=trinton.logical_ties(
            exclude=[0, 1, 2, 4, 5, 6, 8, 9], pitched=True, grace=False
        ),
        index=3,
    ),
    voice=score["violin voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.return_section_1_bow_speed_talea(index=3)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [5, 7, 10, 11, 13, 14, 15, 18], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = ##f",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, 7, 8, 11, 12, 13, 14, 15, 16, 19]
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="CLB on side of bridge",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([-1, 4, -1], 4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([[9, fractions.Fraction(35, 4)]]),
    trinton.change_lines(
        lines=5,
        invisible_barlines=False,
        clef="alto",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.stop_on_string(
        selector=trinton.select_logical_ties_by_index(
            [0], last=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Clef.stencil",
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-5 . 0)",
                ],
                site="before",
            ),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Senza vib.",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=6,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        right_padding=0,
    ),
    voice=score["viola voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([-1, 1, -2], 16)),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = ##f",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, 5, 6, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="CLB on side of bridge",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello voice"],
)

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
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([-1, 4, -1], 4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c,", "a,"]]),
    library.stop_on_string(
        selector=trinton.select_logical_ties_by_index(
            [0], last=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.change_lines(
        clef="bass",
        lines=5,
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Clef.stencil",
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-2.5 . 0)",
                ],
                site="before",
            ),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"III + IV", "Senza vib."],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        right_padding=2,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.tuplet([(-3, 2), (-4, 1), (-5, 1, -2), (-1,), (-1, 2, 2)])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 7, 8, 11]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="CLB on side of bridge",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 1, 2, 1, 1)),
)

# contrabass music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([-2, 1, -1, -3, 1, -2, 1, -1], 16)),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, 4, 5, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="CLB on side of bridge",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["contrabass voice"],
)

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
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.bow_contact_staff(selector=trinton.select_leaves_by_index([0, -2, -1])),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([-1, 4, -1], 4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["e,", "b,"]]),
    library.stop_on_string(
        selector=trinton.select_logical_ties_by_index(
            [0], last=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.change_lines(
        clef="bass",
        lines=5,
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Clef.stencil",
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-2.5 . 0)",
                ],
                site="before",
            ),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=[r"III + IV", "Senza vib."],
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=7.5,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        right_padding=2,
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(-2, 3), (-3, 2), (-4, 2, -2), (-1,), (4, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 9]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.BeamCount(left=2, right=1), abjad.BeamCount(left=1, right=2)]
        ),
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="CLB on side of bridge",
            column="\column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=3,
        style="dashed-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        right_padding=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 1, 2, 1, 1)),
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

for measure in [1, 3, 5, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 6, 8]:
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 30 30 30 30 30)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #32",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 20 20 37 27 22 25)))",
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
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #25",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 17 20 23 33 23 22 23 17 17)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 27 24 23 23 25 30 16 18 20)))",
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
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 16 22 24 22 22 22 30 16 19)))",
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
                r"- \tweak padding #18",
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
    segment_path="/Users/trintonprater/scores/eschaton/eschaton/sections/01b",
    build_path="/Users/trintonprater/scores/eschaton/eschaton/build",
    segment_name="01b",
    includes=[
        "/Users/trintonprater/scores/eschaton/eschaton/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
