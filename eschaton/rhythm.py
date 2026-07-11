import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from eschaton import library
from eschaton import meter


def rhythm_1(index, attack_limit):
    def return_rhythms(durations):
        meters = []
        for duration in durations:
            duration_denominator = duration.denominator
            duration_numerator = duration.numerator

            duration_modulus = 16 / duration_denominator
            meter = duration_numerator * duration_modulus
            meter = int(meter)
            meters.append(meter)

        meter_inventory = []

        [meter_inventory.append(_) for _ in meters if _ not in meter_inventory]

        _metric_permutations = {}

        for meter in meter_inventory:
            proportion = [1 for _ in range(0, attack_limit)]
            partition = abjad.Ratio(proportion).partition_integer(meter)
            permutations = list(itertools.permutations(partition))
            permutations = [tuple(_) for _ in permutations]
            trimmed_permutations = []
            [
                trimmed_permutations.append(_)
                for _ in permutations
                if _ not in trimmed_permutations
            ]

            _metric_permutations[meter] = trimmed_permutations

        tuplet_ratios = []

        for i, meter in enumerate(meters):
            meter_permutations = _metric_permutations[meter]
            cursor = 0 + index
            cursor = cursor % len(meter_permutations)
            tuplet_ratio = meter_permutations[cursor]
            _metric_permutations[meter] = trinton.rotated_sequence(
                meter_permutations, 1 % len(meter_permutations)
            )
            tuplet_ratios.append(tuplet_ratio)

        container = abjad.Container()
        tuplets = rmakers.tuplet(durations, tuplet_ratios)
        container.extend(tuplets)
        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.rewrite_sustained(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rmakers.trivialize(abjad.select.tuplets(container))
        rmakers.extract_trivial(abjad.select.tuplets(container))
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythms


# def rhythm_a(index, invert=None, alpha=None, multiply=False, illustrate=False):
#     def return_rhythms(durations):
#         integer_sequence = trinton.rotated_sequence(
#             ts.all_groupings, index % len(ts.all_groupings)
#         )
#         integer_sequence = abjad.sequence.flatten(integer_sequence)
#         trimmed_integer_sequence = trinton.remove_adjacent(integer_sequence)
#
#         retrograde_integer_sequence = integer_sequence[::-1]
#
#         chords = abjad.select.partition_by_counts(
#             trimmed_integer_sequence,
#             retrograde_integer_sequence,
#             cyclic=True,
#             overhang=True,
#         )
#
#         if invert is not None:
#             inverted_chords = trinton.invert(chords=chords, transposition=invert)
#
#             new_chords = []
#
#             for chord, inverted_chord in zip(chords, inverted_chords):
#                 new_chords.append(chord)
#                 new_chords.append(inverted_chord)
#
#             chords = new_chords
#
#         if alpha is not None:
#             alpha_chords = []
#
#             for chord in chords:
#                 sequence = evans.Sequence(chord)
#                 alpha_chord = sequence.alpha(category=alpha)
#                 alpha_chord = [_ for _ in alpha_chord]
#                 alpha_chords.append(alpha_chord)
#
#             new_chords = []
#
#             for chord, alpha_chord in zip(chords, alpha_chords):
#                 new_chords.append(chord)
#                 new_chords.append(alpha_chord)
#
#             chords = new_chords
#
#         if multiply is True:
#             multiplied_chords = []
#
#             for chord in chords:
#                 multiplied_chord = [pitch * 5 for pitch in chord]
#                 multiplied_chord = [pitch % 12 for pitch in multiplied_chord]
#                 multiplied_chords.append(multiplied_chord)
#
#             new_chords = []
#
#             for chord, multiplied_chord in zip(chords, multiplied_chords):
#                 new_chords.append(chord)
#                 new_chords.append(multiplied_chord)
#
#             chords = new_chords
#
#         tuplet_ratios = []
#         illustration_markups = []
#
#         for chord in chords:
#             pulse_amount = chord.sort()
#             pulse_amount = chord[-1]
#
#             if illustrate is True:
#                 markup = abjad.bundle(
#                     abjad.Markup(
#                         rf"""\markup {{ {[_ - 1 for _ in trinton.remove_adjacent(chord)]} }}"""
#                     ),
#                     abjad.Tweak(r"- \tweak padding 2.5"),
#                     abjad.Tweak(r"- \tweak font-size 3"),
#                     abjad.Tweak(r"- \tweak color #magenta"),
#                 )
#
#                 illustration_markups.append(markup)
#
#             note_indices = [_ - 1 for _ in chord]
#             tuplet = [-1 for _ in range(0, pulse_amount)]
#
#             for note_index in note_indices:
#                 tuplet[note_index] = 1
#
#             if illustrate is True:
#                 final_tuplet = tuple(tuplet)
#                 tuplet_ratios.append(final_tuplet)
#
#             else:
#                 final_tuplet = []
#
#                 rest_counter = 0
#                 attack_counter = 0
#                 for i, _ in enumerate(tuplet):
#                     if attack_counter == 0:
#                         if _ == -1:
#                             rest_counter -= 1
#                         else:
#                             attack_counter += 1
#                             final_tuplet.append(rest_counter)
#                             rest_counter = 0
#                     else:
#                         if _ == -1:
#                             rest_counter -= 1
#                         else:
#                             attack_counter += 1
#                             note_addition = rest_counter * -1
#                             tuplet_ratio = note_addition + _
#                             final_tuplet.append(tuplet_ratio)
#                             rest_counter = 0
#
#                     last_index = len(tuplet) - 1
#                     if i == last_index and _ == 1:
#                         final_tuplet.append(1)
#
#                 final_tuplet = [_ for _ in final_tuplet if _ != 0]
#
#                 tuplet = tuple(final_tuplet)
#                 tuplet_ratios.append(tuplet)
#
#         container = abjad.Container()
#         rhythm_selections = rmakers.tuplet(durations, tuplet_ratios)
#         container.extend(rhythm_selections)
#
#         if illustrate is True:
#             for tuplet, markup in zip(
#                 abjad.select.tuplets(container), illustration_markups
#             ):
#                 abjad.attach(markup, abjad.select.leaf(tuplet, 0), direction=abjad.UP)
#
#                 for i, tie in enumerate(abjad.select.logical_ties(tuplet)):
#                     first_leaf = abjad.select.leaf(tie, 0)
#                     markup = abjad.Markup(rf"""\markup {{ {i} }}""")
#                     if isinstance(first_leaf, abjad.Note):
#                         markup = abjad.bundle(
#                             markup, abjad.Tweak(r"- \tweak color #magenta")
#                         )
#                     abjad.attach(markup, first_leaf, direction=abjad.DOWN)
#
#         rhythm_selections = abjad.mutate.eject_contents(container)
#         return rhythm_selections
#
#     return return_rhythms
#
#
# def rhythm_b(
#     score,
#     voice_name,
#     measures,
#     index=0,
#     extra_voice="",
#     preprocessor=None,
# ):
#     integer_sequence = abjad.sequence.flatten(ts.all_groupings)
#     integer_sequence = trinton.rotated_sequence(
#         integer_sequence, index % len(integer_sequence)
#     )
#
#     retrograde_integer_sequence = integer_sequence[::-1]
#     retrograde_integer_sequence = trinton.rotated_sequence(
#         retrograde_integer_sequence, index % len(retrograde_integer_sequence)
#     )
#
#     prograde_tuplet_ratios = []
#
#     for attack_amount in integer_sequence:
#         tuplet = [1 for _ in range(0, attack_amount)]
#         tuplet = tuple(tuplet)
#         prograde_tuplet_ratios.append(tuplet)
#
#     retrograde_tuplet_ratios = []
#
#     for attack_amount in retrograde_integer_sequence:
#         tuplet = [1 for _ in range(0, attack_amount)]
#         tuplet = tuple(tuplet)
#         retrograde_tuplet_ratios.append(tuplet)
#
#     trinton.make_music(
#         lambda _: trinton.select_target(_, measures),
#         evans.RhythmHandler(evans.tuplet(prograde_tuplet_ratios, treat_tuplets=False)),
#         trinton.IntermittentVoiceHandler(
#             evans.RhythmHandler(
#                 evans.tuplet(retrograde_tuplet_ratios, treat_tuplets=False),
#             ),
#             direction=abjad.DOWN,
#             voice_name=f"{voice_name} polyrhythm {extra_voice}",
#             temp_name=f"temp {extra_voice}",
#             preprocessor=preprocessor,
#         ),
#         voice=score[voice_name],
#         preprocessor=preprocessor,
#     )
#
#
# def rhythm_c(index, nesting_level=None, nesting_selector=None, duration_filter=True):
#     def return_rhythms(durations):
#         integer_sequence = abjad.sequence.flatten(ts.all_groupings)
#         integer_sequence = trinton.rotated_sequence(
#             integer_sequence, index % len(integer_sequence)
#         )
#         integer_sequence = [_ % 3 for _ in integer_sequence]
#         integer_sequence = [_ + 3 for _ in integer_sequence]
#
#         tuplet_ratios = []
#         for subdivision, duration in zip(integer_sequence, durations):
#             duration_denominator = duration.denominator
#             duration_numerator = duration.numerator
#
#             duration_modulus = 4 / duration_denominator
#             pulse_group = duration_numerator * duration_modulus
#             pulse_group = int(pulse_group)
#
#             while subdivision > pulse_group:
#                 pulse_group = pulse_group * 2
#
#             proportion = [1 for _ in range(0, subdivision)]
#
#             partition = abjad.Ratio(proportion).partition_integer(pulse_group)
#             partition = tuple(partition)
#             tuplet_ratios.append(partition)
#
#         container = abjad.Container()
#         rhythm_selections = rmakers.tuplet(durations, tuplet_ratios)
#         container.extend(rhythm_selections)
#
#         if nesting_level is not None:
#             sub_ratios = []
#             for tuplet_ratio in tuplet_ratios:
#                 tuplet_list = [_ for _ in tuplet_ratio]
#                 tuplet_permutations = list(itertools.permutations(tuplet_list))
#                 for permutation in tuplet_permutations:
#                     tuplet = tuple(permutation)
#                     sub_ratios.append(tuplet)
#
#             for _ in range(0, nesting_level):
#                 relevant_ties = nesting_selector(container)
#                 for tie, sub_ratio in zip(relevant_ties, itertools.cycle(sub_ratios)):
#                     tie_duration = abjad.get.duration(tie, preprolated=True)
#                     if (
#                         tie_duration < abjad.Duration((1, 2))
#                         and duration_filter is True
#                     ):
#                         pass
#                     else:
#                         tuplet = rmakers.tuplet([tie_duration], [sub_ratio])
#                         abjad.mutate.replace(tie, tuplet)
#
#         rhythm_selections = abjad.mutate.eject_contents(container)
#         return rhythm_selections
#
#     return return_rhythms
