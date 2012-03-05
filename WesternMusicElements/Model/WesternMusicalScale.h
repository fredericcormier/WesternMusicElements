//
//  WesternMusicalScale.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
/*
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
    
}*/
#import <Foundation/Foundation.h>

enum WesternMusicalScaleMode {
    WMScaleModeChromatic = 0,
    WMScaleModeMajor,
    WMScaleModeNaturalMinor,
    WMScaleModeHarmonicMinor,
    WMScaleModeMelodicMinor,
    WMScaleModeIonian,
    WMScaleModeDorian,
    WMScaleModePhrygian,
    WMScaleModeLydian,
    WMScaleModeMixolydian,
    WMScaleModeAeolian,
    WMScaleModeLocrian,
    WMScaleModeGypsyMinor,
    WMScaleModeWholeTone,
    WMScaleModeMajorPentatonic,
    WMScaleModeMinorPentatonic
};
typedef enum WesternMusicalScaleMode WesternMusicalScaleMode;

@interface WesternMusicalScale : NSObject

- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WesternMusicalScaleMode)aMode;

@end
