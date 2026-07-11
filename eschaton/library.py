import abjad
import baca
import evans
import trinton
import itertools
import numpy
import eschaton
import random
import statistics
from sympy import combinatorics

# score


def eschaton_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.AltoFlute(),
            abjad.Oboe(),
            abjad.BaritoneSaxophone(),
            abjad.BassClarinet(),
            abjad.Percussion(),
            abjad.Percussion(),
            abjad.Guitar(),
            abjad.Harp(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Violin(),
            abjad.Viola(),
            abjad.Cello(),
            abjad.Contrabass(),
        ],
        groups=[
            2,
            2,
            2,
            1,
            1,
            2,
            1,
            1,
            1,
            1,
        ],
        # staff_types=[
        #     ["Staff", "disappearingStaff"],
        # ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# beautification


# notation tools


# structure
