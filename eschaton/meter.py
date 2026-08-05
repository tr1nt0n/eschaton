import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from eschaton import library
from eschaton import meter


def write_meter(index, attack_limit):
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
