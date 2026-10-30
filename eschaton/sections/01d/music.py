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
    lambda _: trinton.select_target(_, (1, 3)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        evans.talea(
            [8],
            32,
            extra_counts=[0, -1, -2, -3, -4, -5],
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
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

# oboe music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([-3, 5, -1, 3], 8)),
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
    trinton.aftergrace_command(
        invisible=True, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.pitch_with_selector_command(
        [["g''", "d'''"], ["c''", "g''"]], selector=trinton.pleaves(grace=True)
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.detach_command(
        detachments=[abjad.StopTextSpan], selector=trinton.pleaves()
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTextSpan()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    voice=score["oboe voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([-1, 3, -2, 5], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["e'''"]),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    trinton.pitch_with_selector_command(
        ["c'''", "g'''"], selector=trinton.pleaves(grace=True)
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
        padding=8.5,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    voice=score["bassclarinet voice"],
)

# guitar music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(evans.talea([5, 1, 3, 1, 4, 1, 3], 8)),
    evans.PitchHandler([["ef'''", "b''", "a''", "ef''"], ["e''", "b'", "g'", "d'"]]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.Articulation("open")],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_tie_index_selector(
            [0], 2, pitched=True, grace=False
        ),
    ),
    abjad.slur,
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
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
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
        command="Three",
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"""\markup { \override #'(font-size . -4) { \note {4} #1.75 } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 4, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=True,
        end_hook_right_padding=0,
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
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 4, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=13.5,
        right_padding=-1.5,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
    ),
    voice=score["guitar voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(
        evans.talea(
            [
                -6,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
            ],
            32,
            extra_counts=[
                0,
                -1,
                -2,
                -3,
                -4,
                -5,
                -6,
                -7,
                -8,
                -9,
                -10,
                -11,
                -12,
                -13,
                -14,
                -15,
                -16,
                -17,
            ],
        )
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        ["ef'''", "b''", "a''", "e''", "ef''", "a''", "g'", "b''", "ef'''", "b'"]
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.Articulation("open")],
        selector=trinton.patterned_tie_index_selector(
            [3, 6, 9], 10, first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 4, 5, 7, 8], 10, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=r"Half directly on bridge, half on string",
            column="\center-column",
            font_name="Bodoni72 Book Italic",
            fontsize=0,
            string_only=True,
        ),
        full_string=True,
        padding=9,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=0,
        command="Three",
    ),
    voice=score["guitar voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(
        evans.talea(
            [4],
            32,
            extra_counts=[
                0,
                -1,
                -2,
                -3,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
                -4,
            ],
        )
    ),
    evans.PitchHandler(["es''''", "f''''"]),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=3,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
                8,
            ],
            32,
            extra_counts=[
                0,
                -1,
                -2,
                -3,
                -4,
                -5,
                -6,
                -7,
                -8,
                -9,
                -10,
                -11,
                -12,
                -13,
                -14,
                -15,
                -16,
                -17,
            ],
        )
    ),
    evans.PitchHandler(["es''''", "f''''"]),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
        padding=11,
        style="dashed-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=3,
    ),
    voice=score["harp voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1)])
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler([["c'", "df'", "a'", "b'"]]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 8, 18], pitched=True, grace=False),
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["percussion 1 voice"],
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
                string=[r"Motor", r"100%"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1)])
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            "f",
            "f'''",
            "a",
            "ef'''",
            "c'",
            "ef'''",
            "ef'",
            "ef'''",
            "af'",
            "ef'''",
            "d''",
            "ef'''",
            "a''",
            "ef'''",
            "b''",
        ]
    ),
    trinton.continuous_glissando(
        zero_padding=True, selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", site="before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler([["ef'''", "b''", "d'''", "a''"]]),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 6, 15], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["percussion 2 voice"],
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

for measure in [1, 3, 5]:
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
