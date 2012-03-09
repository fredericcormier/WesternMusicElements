# !/usr/bin/env ruby

require "rubygems"
require "json"


CHORDS = {   
    "Major" =>               [0,4,7],
    "Major 6" =>             [0,4,7,9 ],
    "Major 7" =>             [0,4,7,11],
    "Major 9" =>             [0,4,7,11,14],
    "Major 69"=>            [0,4,7,9,14],
    "Major 11" =>            [0,4,7,11,14,17],
    "Major 13" =>            [0,4,7,11,14,17,21],
    "Minor" =>               [0,3,7],
    "Minor 6" =>             [0,3,7,9],
    "Minor 7" =>             [0,3,7,10],
    "Minor 9" =>             [0,3,7,10,14],
    "Minor 69" =>           [0,3,7,9,14],
    "Minor 11" =>            [0,3,7,10,14,17],
    "Minor 13" =>            [0,3,7,10,14,17,21],
    "Dominant 7"=>           [0,4,7,10],
    "Ninth" =>               [0,4,7,10,14],
    "Eleventh" =>            [0,4,7,10,14,17],
    "Thirteenth" =>          [0,4,7,10,14,17,21],
    "Diminished" =>          [0,3,6],
    "Half Diminished 7" =>   [0,3,6,10],
    "Diminished 7" =>        [0,3,6,9],
    "Augmented" =>           [0,4,8],
    "Augmented 7" =>         [0,4,8,10],
    "Sus4" =>                [0,5,7],
    "Seventh sus4" =>        [0,5,7,10],
    "Minor major" =>         [0,3,7,11]
}
SCALES = {
    "Chromatic" =>           [0,1,2,3,4,5,6,7,8,9,10,11,12],
    "Major" =>       	    [0,2,4,5,7,9,11,12],
    "Natural Minor" =>       [0,2,3,5,7,8,10,12],
    "Harmonic Minor" =>      [0,2,3,5,7,8,11,12],
    "Melodic Minor" =>       [0,2,3,5,7,9,11,12],
    "Ionian" =>              [0,2,4,5,7,9,11,12],
    "Dorian"  =>             [0,2,3,5,7,9,10,12],
    "Phrygian" =>            [0,1,3,5,7,8,10,12],
    "Lydian" =>              [0,2,4,6,7,9,11,12],
    "Mixolydian" =>          [0,2,4,5,7,9,10,12],
    "Aeolian" =>             [0,2,3,5,7,8,10,12],
    "Locrian" =>             [0,1,3,5,6,8,10,12],
    "Gypsy Minor" =>         [0,2,3,6,7,8,11,12],
    "Whole Tone" =>          [0,2,4,6,8,10,12],
    "Major Pentatonic" =>    [0,2,4,7,9,12],
    "Minor Pentatonic" =>    [0,3,5,7,10,12]

}

File.open("chords.json","w+") do |f|
    CHORDS.to_json.each { |l| f << l.to_s << "\n" }
end

File.open("scales.json","w+") do |f|
    SCALES.to_json.each { |l| f << l.to_s << "\n" }
end