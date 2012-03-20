module WMRubyData
  
FILE_HEADER = <<HEADER
//
//  WMData.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 06/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
HEADER


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
    "Minor Pentatonic" =>    [0,3,5,7,10,12],
    "Major Bebop" =>         [0,2,4,5,7,8,9,11,12],
    "Altered Scale" =>        [0,1,3,4,6,8,10,12],
    "Dorian Bebop"=>        [0,2,3,4,5,7,9,10,12],
    "Mixolydian Bebop"=>    [0,2,4,5,7,9,10,11,12],
    "Blues Scale"=>         [0,3,5,6,7,10,12],
    "Diminished Whole Half"=>[0,2,3,5,6,8,9,11,12],
    "Diminished Half Whole" =>[0,1,3,4,6,7,9,10,12],
    "Neapolitan Major" =>       [0,1,3,5,7,9,11,12],
    "Hungarian Major" =>        [0,3,4,6,7,9,10,12],
    "Harmonic Major" =>     [0,2,4,5,7,8,11,12],
    "Hungarian Minor" =>    [0,2,3,6,7,8,11,12],
    "Lydian Minor" =>       [0,2,4,6,7,8,10,12],
    "Neapolitan Minor" =>   [0,1,3,5,7,8,11,12],
    "Major Locrian" =>      [0,2,4,5,6,8,10,12],
    "Leading Whole Tone" => [0,2,4,6,8,10,11,12],
    "Six Tone Symmetrical" => [0,1,4,5,8,9,11,12],
    "Arabian" =>            [0,2,4,5,6,8,10,12],
    "Balinese" =>           [0,1,3,7,8,12],
    "Byzantine" =>          [0,1,3,5,7,8,11,12],
    "Hungarian Gypsy"=>    [0,2,4,6,7,8,10,12],
    "Persian" =>            [0,1,4,5,6,8,11,12],
    "East Indian Purvi" =>  [0,1,4,6,7,8,11,12],
    "Oriental" =>           [0,1,4,5,6,9,10,12],
    "Double Harmonic" =>    [0,1,4,5,7,8,11,12],
    "Enigmatic" =>          [0,1,4,6,8,10,11,12],
    "Overtone" =>           [0,2,4,6,7,9,10,12],
    "Eight Tone Spanish" => [0,1,3,4,5,6,8,10,12],
    "Prometheus" =>         [0,2,4,6,9,10,12],
    "GAGAKU Rittsu Sen Pou" => [0,2,5,7,9,10,12],
    "GAGAKU Ryo Sen Pou" => [0,2,4,7,9,12],
    "ZOKUGAKU Yo Sen Pou" => [0,3,5,7,10,12],
    "In Sen Pou" =>         [0,1,5,2,8,12],
    "Okinawa" =>            [0,4,5,7,11,12]
  }

end