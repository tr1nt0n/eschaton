import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import random
from eschaton import library
from eschaton import meter


def rhythm_1(stage, selector=trinton.logical_ties(pitched=True, grace=False)):
    def make_rhythm_1(argument):
        subdivisions = selector(argument)
        tuplet_durations = [
            abjad.get.duration(_, preprolated=True) for _ in subdivisions
        ]
        if stage == 1:
            tuplet_ratio = (-1, 1)
        if stage == 2:
            tuplet_ratio = (-1, 2)
        if stage == 3:
            tuplet_ratio = (-1, 3)

        container = abjad.Container()
        tuplets = rmakers.tuplet(tuplet_durations, [tuplet_ratio])
        container.extend(tuplets)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.rewrite_sustained(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rmakers.trivialize(abjad.select.tuplets(container))
        rmakers.extract_trivial(abjad.select.tuplets(container))
        rhythm_selections = abjad.mutate.eject_contents(container)
        abjad.mutate.replace(argument, rhythm_selections)

    return make_rhythm_1


def rhythm_3(
    instrument,
    fuse_partitions=[2, 3, 3, 2],
    selector=trinton.logical_ties(pitched=True, grace=False),
):
    def make_rhythm_3(argument):
        subdivisions = selector(argument)
        if instrument == "piano":
            talea_counts = []

            for subdivision in subdivisions:
                subdivision_duration = abjad.get.duration(subdivision, preprolated=True)
                numerator = subdivision_duration.numerator
                denominator = subdivision_duration.denominator

                if denominator != 16:
                    modulator = 16 / denominator
                    modulated_numerator = numerator * modulator
                    modulated_numerator = int(modulated_numerator)
                    talea_counts.append(1)
                    rest_count = modulated_numerator - 1
                    rest_count = rest_count * -1
                    talea_counts.append(rest_count)

                else:
                    if numerator == 1:
                        talea_counts.append(1)
                    else:
                        talea_counts.append(1)
                        rest_count = numerator - 1
                        rest_count = rest_count * -1
                        talea_counts.append(rest_count)

            container = abjad.Container()
            talea = rmakers.talea(
                [abjad.get.duration(argument, preprolated=True)], talea_counts, 16
            )
            container.extend(talea)
            rmakers.rewrite_dots(abjad.select.tuplets(container))
            rmakers.rewrite_sustained(abjad.select.tuplets(container))
            trinton.respell_tuplets(
                abjad.select.tuplets(container), rewrite_brackets=False
            )
            rmakers.trivialize(abjad.select.tuplets(container))
            rmakers.extract_trivial(abjad.select.tuplets(container))
            rhythm_selections = abjad.mutate.eject_contents(container)
            abjad.mutate.replace(argument, rhythm_selections)

        if instrument == "strings":
            partitioned_subdivisions = abjad.select.partition_by_counts(
                argument,
                fuse_partitions,
                cyclic=True,
                overhang=True,
            )

            for partition in partitioned_subdivisions:
                abjad.mutate.fuse(partition)

    return make_rhythm_3


def rhythm_5(
    stage,
    voice,
    partitions=[3, 4],
    selector=trinton.logical_ties(pitched=True, grace=False),
):
    def make_rhythm_5(argument):
        subdivisions = selector(argument)

        tuplet_durations = [
            abjad.get.duration(_, preprolated=True) for _ in subdivisions
        ]

        partitioned_subdivisions = abjad.select.partition_by_counts(
            subdivisions,
            partitions,
            cyclic=True,
            overhang=True,
        )

        tuplet_ratios = []

        for partition in partitioned_subdivisions:
            tuplet_ratio = []
            for tie in abjad.select.logical_ties(partition):
                tie_duration = abjad.get.duration(tie, preprolated=True)
                numerator = tie_duration.numerator
                denominator = tie_duration.denominator

                if denominator != 16:
                    modulator = 16 / denominator
                    modulated_numerator = numerator * modulator
                    modulated_numerator = int(modulated_numerator)
                    tuplet_ratio.append(modulated_numerator)

                else:
                    tuplet_ratio.append(numerator)

            retrograde_tuplet = tuplet_ratio[::-1]
            inverted_tuplet = trinton.rotated_sequence(tuplet_ratio, 1)

            tuplet_ratio = tuple(tuplet_ratio)
            retrograde_tuplet_ratio = tuple(retrograde_tuplet)
            inverted_tuplet_ratio = tuple(inverted_tuplet)

            if stage == 1:
                tuplet_ratios.append(tuplet_ratio)
                tuplet_ratios.append(retrograde_tuplet_ratio)
            if stage == 2 or stage == 3:
                if voice == 1:
                    tuplet_ratios.append(tuplet_ratio)
                    tuplet_ratios.append(inverted_tuplet_ratio)
                    tuplet_ratios.append(retrograde_tuplet_ratio)
                if voice == 2:
                    tuplet_ratios.append(inverted_tuplet_ratio)
                    tuplet_ratios.append(retrograde_tuplet_ratio)
                    tuplet_ratios.append(tuplet_ratio)
                if voice == 3:
                    tuplet_ratios.append(retrograde_tuplet_ratio)
                    tuplet_ratios.append(tuplet_ratio)
                    tuplet_ratios.append(inverted_tuplet_ratio)

        container = abjad.Container()
        tuplets = rmakers.tuplet(tuplet_durations, tuplet_ratios)
        container.extend(tuplets)

        if stage == 1:
            rest_indices = [0, 3, 4]

        if stage == 2:
            rest_indices = [0, 2]

        if stage == 3:
            rest_indices = [4]

        patterned_tuplet_index_selector = trinton.patterned_index_selector(
            preselector=abjad.select.tuplets, indices=rest_indices, period=5
        )

        rest_tuplets = patterned_tuplet_index_selector(container)
        rmakers.force_rest(rest_tuplets)

        if stage == 3:
            tie_selector = trinton.patterned_tie_index_selector(
                indices=[2], period=7, pitched=True, grace=False
            )

            relevant_ties = tie_selector(container)

            for tie in relevant_ties:
                tie_duration = abjad.get.duration(tie, preprolated=True)
                if tie_duration >= abjad.Duration((1, 16)):
                    tuplet = rmakers.tuplet(
                        [abjad.get.duration(tie, preprolated=True)], [(1, 1, 1)]
                    )
                    rmakers.rewrite_dots(tuplet)
                    trinton.respell_tuplets(tuplet, rewrite_brackets=False)
                    abjad.mutate.replace(tie, tuplet)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.rewrite_sustained(abjad.select.tuplets(container))
        rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rmakers.trivialize(abjad.select.tuplets(container))
        rmakers.extract_trivial(abjad.select.tuplets(container))
        rhythm_selections = abjad.mutate.eject_contents(container)
        abjad.mutate.replace(argument, rhythm_selections)

    return make_rhythm_5
