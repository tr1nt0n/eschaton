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

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=3)),
    rhythm.rhythm_5(
        stage=3,
        voice=1,
        partitions=[2, 3],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                -5,
                -4,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([5, 6, 7]),
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=3)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 3, 4, 11, 12, 16, 20, 23], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
        ],
        selector=trinton.select_leaves_by_index([6, 7, 8, 9, 15], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 11, 12, -1], pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(notehead="la", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Alto",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True),
        direction=abjad.UP,
    ),
    library.smorzando(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        angles=16,
    ),
    library.smorzando(
        selector=trinton.select_logical_ties_by_index(
            [12], first=True, pitched=True, grace=False
        ),
        angles=8,
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
        padding=14.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([3, 16]),
        right_padding=-1,
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
        padding=13,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([20, 24]),
        right_padding=0,
    ),
    voice=score["altoflute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 3, 5, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                -1,
                1,
                1,
                1,
                1,
                -1,
                -1,
                -1,
                -1,
                -1,
                1,
                1,
                1,
                1,
                1,
                1,
                -1,
                -1,
                -1,
                -1,
                -1,
                -1,
                1,
                1,
                1,
                1,
                1,
                -1,
                -1,
                -1,
                -1,
                -1,
                -1,
                1,
                1,
                -1,
                -1,
                -1,
                -1,
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
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["altoflute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                3,
                3,
                3,
                3,
                -2,
                -2,
                -2,
                -2,
                -2,
                -2,
                3,
                3,
                3,
                3,
                3,
                -2,
                -2,
                -2,
                -2,
                -2,
                -2,
                3,
                3,
                -2,
                -2,
                -2,
                -2,
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
            ],
            32,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["altoflute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([-1, 2], 4)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando([(1, 16), (1, 8), (1, 16)])
        ),
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.invisible_tuplet_brackets(),
    voice=score["altoflute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                4,
                4,
                4,
                4,
                -1,
                -1,
                -1,
                -1,
                -1,
                -1,
                4,
                4,
                -1,
                -1,
                -1,
                -1,
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
                -1,
                -1,
                4,
                4,
                4,
                4,
                -1,
                -1,
                -1,
                -1,
                -1,
                4,
                4,
                4,
                4,
                4,
                4,
                -1,
                -1,
                -1,
                -1,
                -1,
                -1,
            ],
            32,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["altoflute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    library.flute_flageolets(
        selector=trinton.pleaves(),
        ametric=False,
        # ottava=False,
    ),
    trinton.call_rmaker(rmaker=rmakers.beam, selector=abjad.select.tuplets),
    library.left_beam(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(font-size . 2) { "rit. to ~" } \override #'(font-size . -4) { \note {8} #1.75 } }""",
            r"\markup {}",
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 16], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    voice=score["altoflute voice"],
)

# oboe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent="long", index=3, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_section_1_oboe_double_harmonics(
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=False)
    ),
    library.attach_oboe_double_harmonic_markups(
        selector=trinton.pleaves(), right_padding=0
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 9, 10, 13, 14, -1], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=4),
        ],
        selector=trinton.select_leaves_by_index([4, 16, 17], grace=False),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 6, 7], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["g''", "d'''"], ["d''", "a''"], ["a''", "e'''"]],
        selector=trinton.pleaves(grace=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([6, 7], pitched=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([8, 9], pitched=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([10, 11], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.detach_command(
        detachments=[abjad.StopTextSpan],
        selector=trinton.select_logical_ties_by_index(
            [6], first=True, grace=False, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTextSpan()],
        selector=trinton.select_leaves_by_index([2], grace=True, pitched=True),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7, 7, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([-5, 19, 12, -100], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ef'''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.vibrato_spanner(
        selector=trinton.logical_ties(pitched=True, grace=False),
        index=18,
        peak_multiplier=8,
    ),
    voice=score["oboe voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent=None, index=3, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e'''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([4, 5]),
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7)),
    # beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent=None, index=3, stage=3))
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e'''", "c'''", "e'''", "b''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.pleaves(exclude=[1, 3, 5])
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([1, 3, 5], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([1, 3, 5], pitched=True),
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.tremolo_command(selector=trinton.pleaves()),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 4, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=-0.5,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=3)),
    rhythm.rhythm_5(
        stage=3,
        voice=2,
        partitions=[2, 3],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 20, 21, 22, 23, 24, 25, 26, 27, 28],
            pitched=True,
            grace=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([6, 7, 8]),
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=1)),
    trinton.octavation(octave=-1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 6, 8, 9, 10], pitched=True, grace=False
        ),
    ),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 3, 4, 11, 12, 16, 20, 22], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
        ],
        selector=trinton.select_leaves_by_index([6, 7, 8, 9, 13, 15], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 11, 12, 14], pitched=True, grace=False
        ),
        # direction=abjad.DOWN,
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
        padding=12.25,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([3, 16, 20, 23]),
        right_padding=-1,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 3, 5, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=5)),
    rhythm.rhythm_5(
        stage=3,
        voice=2,
        partitions=[1, 1, 1, 2, 1, 1],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 6, 7, 16],
            pitched=True,
            grace=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=16)),
    trinton.octavation(octave=-1, selector=trinton.pleaves()),
    library.transposition(
        instrument="bass clarinet", selector=trinton.logical_ties(pitched=True)
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(grace=False)
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 5, 6, 7, 9, 10, 11, 15, 16, 20], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 4, 12, 14, 17, 18], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 11, 12, 13], pitched=True, grace=False
        ),
        # direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
        padding=4.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([3, 8, 10, 20]),
        right_padding=-1,
    ),
    voice=score["bassclarinet voice"],
)


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
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=5)),
    rhythm.rhythm_5(
        stage=3,
        voice=1,
        partitions=[1, 1, 1, 2, 1, 1],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 6, 7, 16],
            pitched=True,
            grace=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        pitch_list=pitch.return_material_5_pitches(index=15, guitar=True)
    ),
    trinton.octavation(octave=-1, selector=trinton.pleaves(exclude=[2, 3])),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(grace=False)
    #     # selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 5, 6, 7, 9, 10, 11, 15, 16, 20], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 4, 12, 17, 18], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                11,
                12,
                13,
            ],
            pitched=True,
            grace=False,
        ),
        # direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 11, 12, 13], pitched=True, grace=False
        ),
        # direction=abjad.DOWN,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
        padding=9,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([2, 8]),
        right_padding=-1,
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
        selector=trinton.select_leaves_by_index([10, 20]),
        right_padding=-1,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 80%",
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
        attachments=[
            trinton.boxed_markup(
                string=r"Motor 10%",
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([8]),
        direction=abjad.UP,
    ),
    voice=score["percussion 2 voice"],
)

# guitar music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[
                (-1,),
                (-2, 1),
                (1, 2),
                (-1, 2),
                (3, 2),
                (-1,),
                (-1,),
                (-2, 1),
                (2, -1),
            ],
            preprocessor=None,
            nested_ratios=[(2, 1)],
            triple_nested_ratios=None,
            nested_vectors=None,
            nested_period=None,
            triple_nested_vectors=None,
            triple_nested_period=None,
            extract_trivial_tuplets=True,
            nested_selector=trinton.select_logical_ties_by_index(
                [1], pitched=True, grace=False
            ),
            triple_nested_selector=None,
        )
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 7], last=True, pitched=True, grace=False
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["bf", "a", "d'", "c''", "b'"],
            [
                "fs",
                "c'",
                "d'",
                "b'",
            ],
            [
                "bf",
                "a",
                "fs'",
                "b'",
            ],
            ["f", "cs'", "fs'", "gs'", "b'"],
            [
                "as",
                "cs'",
                "fs'",
                "g'",
                "b'",
            ],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                4,
                8,
                9,
                11,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
        ],
        selector=trinton.select_leaves_by_index([7, 10, 11]),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg., MST",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=15.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([3, 11]),
        right_padding=-1,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Rasg., MSP",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=10,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([15, 17]),
        right_padding=-1,
    ),
    voice=score["guitar voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 2, 2, 2, 3, 9, 3, 4, 5)),
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent="short", index=3, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent="short", index=3, stage=3))
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 4, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves
    # ),
    evans.PitchHandler([["c'''''", "b''''", "as''''"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 9, 10, 12]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([2, 3], pitched=True, grace=False),
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped"), abjad.Articulation(">")],
        selector=trinton.logical_ties(
            exclude=[5, -2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(exclude=[5, -2], grace=False)
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
        selector=trinton.select_leaves_by_index([9, 10, 14, 16], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Dynamic("pp"), abjad.Dynamic('"fff"')]),
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 7, 8], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["piano 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([-5, 19, 12, -100], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ef'''", "eqf'''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        index=17,
        peak_multiplier=8,
    ),
    library.vibrato_spanner(
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
        index=18,
        peak_multiplier=6,
    ),
    voice=score["violin voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(rhythm.return_section_1_figures(accent="long", index=3, stage=2))
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.respell_tuplets_by_hand(tuplets=[0], multipliers=[(6, 7)], as_markup=False),
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
        selector=trinton.select_leaves_by_index([0, 2, 3, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=3)],
        selector=trinton.select_leaves_by_index([4], grace=False),
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
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(meter.write_meter(index=0, attack_limit=5)),
    rhythm.rhythm_5(
        stage=3,
        voice=3,
        partitions=[1, 1, 1, 2, 1, 1],
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 6, 7, 16],
            pitched=True,
            grace=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(-1,)])),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=pitch.return_material_5_pitches(index=17)),
    trinton.octavation(octave=-1, selector=trinton.pleaves(exclude=[-1])),
    trinton.change_lines(
        lines=5,
        clef="alto",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(grace=False)
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 5, 6, 7, 9, 10, 11, 15, 16, 20], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 4, 12, 14, 17, 18], grace=False),
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding 1"
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding 1"
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"MST",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=13.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([3, 8]),
        right_padding=-1,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"MST",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=15.25,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([10, 20]),
        right_padding=-1,
    ),
    voice=score["viola voice"],
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
#
for measure in [3, 5, 7, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 2, 4, 6, 8, 10]:
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
for measure in [10]:
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
