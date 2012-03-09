# !/usr/bin/env ruby

require "rubygems"
require "json"


CHORDS ={   
    :major =>               [0,4,7],
    :major_6 =>             [0,4,7,9 ],
    :major_7 =>             [0,4,7,11],
    :major_9 =>             [0,4,7,11,14],
    :major_6_9=>            [0,4,7,9,14],
    :major_11 =>            [0,4,7,11,14,17],
    :major_13 =>            [0,4,7,11,14,17,21],
    :minor =>               [0,3,7],
    :minor_6 =>             [0,3,7,9],
    :minor_7 =>             [0,3,7,10],
    :minor_9 =>             [0,3,7,10,14],
    :minor_6_9 =>           [0,3,7,9,14],
    :minor_11 =>            [0,3,7,10,14,17],
    :minor_13 =>            [0,3,7,10,14,17,21],
    :dominant_7=>           [0,4,7,10],
    :ninth =>               [0,4,7,10,14],
    :eleventh =>            [0,4,7,10,14,17],
    :thirteenth =>          [0,4,7,10,14,17,21],
    :diminished =>          [0,3,6],
    :half_diminished_7 =>   [0,3,6,10],
    :diminished_7 =>        [0,3,6,9],
    :augmented =>           [0,4,8],
    :augmented_7 =>         [0,4,8,10],
    :sus4 =>                [0,5,7],
    :seventh_sus4 =>        [0,5,7,10],
    :minor_major =>         [0,3,7,11]
}
SCALES = {
    :chromatic =>           [0,1,2,3,4,5,6,7,8,9,10,11,12],
    :major_scale => 	    [0,2,4,5,7,9,11,12],
    :natural_minor =>       [0,2,3,5,7,8,10,12],
    :harmonic_minor =>      [0,2,3,5,7,8,11,12],
    :melodic_minor =>       [0,2,3,5,7,9,11,12],
    :ionian =>              [0,2,4,5,7,9,11,12],
    :dorian  =>             [0,2,3,5,7,9,10,12],
    :phrygian =>            [0,1,3,5,7,8,10,12],
    :lydian =>              [0,2,4,6,7,9,11,12],
    :mixolydian =>          [0,2,4,5,7,9,10,12],
    :aeolian =>             [0,2,3,5,7,8,10,12],
    :locrian =>             [0,1,3,5,6,8,10,12],
    :gypsy_minor =>         [0,2,3,6,7,8,11,12],
    :whole_tone =>          [0,2,4,6,8,10,12],
    :major_pentatonic =>    [0,2,4,7,9,12],
    :minor_pentatonic =>    [0,3,5,7,10,12]

}

puts CHORDS.to_json