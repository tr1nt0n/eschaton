import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import math
import random
from eschaton import library


semitone_interval_sequence = [-4, 4, -1, 3, 2, 1, -4, 4]

quarter_tone_interval_sequence = [_ / 2 for _ in semitone_interval_sequence]

initial_chord = [3]

current_pitch = 3
for interval in quarter_tone_interval_sequence:
    new_pitch = current_pitch + interval
    new_pitch = new_pitch % 12
    initial_chord.append(new_pitch)
    current_pitch += interval

material_5_pitch_sequence = []

for _ in initial_chord:
    material_5_pitch_sequence.append(_)

for interval in semitone_interval_sequence:
    for pitch in initial_chord:
        inversion = interval - pitch
        inversion = inversion % 12
        material_5_pitch_sequence.append(inversion)

pitch_sequence_first_half = material_5_pitch_sequence[:40]
pitch_sequence_second_half = material_5_pitch_sequence[40:]
pitch_sequence_first_half = pitch_sequence_first_half[::-1]

material_5_pitch_list = trinton.shuffle(
    lists=[pitch_sequence_first_half, pitch_sequence_second_half]
)


def return_material_5_pitches(index=0, guitar=False, harp=False):
    initial_pitch_list = trinton.rotated_sequence(
        material_5_pitch_list, index % len(material_5_pitch_list)
    )
    if guitar is True or harp is True:
        if guitar is True:
            pitch_list = []
            for pitch in initial_pitch_list:
                if int(pitch) != pitch:
                    new_pitch = math.ceil(pitch)
                    new_pitch = new_pitch % 12
                    pitch_list.append(new_pitch)
                else:
                    pitch_list.append(pitch)
            pitch_list = trinton.remove_adjacent(pitch_list)

        if harp is True:
            pitch_list = []
            for pitch in initial_pitch_list:
                if pitch == 0 or pitch == 0.5:
                    pitch_list.append(1)
                if pitch == 1 or pitch == 1.5:
                    pitch_list.append(1)
                if pitch == 2 or pitch == 2.5:
                    pitch_list.append(2)
                if pitch == 3 or pitch == 3.5:
                    pitch_list.append(3)
                if pitch == 4 or pitch == 4.5:
                    pitch_list.append(3)
                if pitch == 5 or pitch == 5.5:
                    pitch_list.append(6)
                if pitch == 6 or pitch == 6.5:
                    pitch_list.append(6)
                if pitch == 7 or pitch == 7.5:
                    pitch_list.append(7)
                if pitch == 8 or pitch == 8.5:
                    pitch_list.append(8)
                if pitch == 9 or pitch == 9.5:
                    pitch_list.append(8)
                if pitch == 10 or pitch == 10.5:
                    pitch_list.append(11)
                if pitch == 11 or pitch == 11.5:
                    pitch_list.append(11)
            pitch_list = trinton.remove_adjacent(pitch_list)
    else:
        pitch_list = initial_pitch_list

    return pitch_list
