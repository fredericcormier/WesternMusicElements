//
//  WMData.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 06/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>


enum WMInterval {
    WMDiatonicIntervalPerfectUnison         = 0,
    WMChromaticIntervalDiminishedSecond     = 0,    
    WMDiatonicIntervalMinorSecond           = 1,
    WMChromaticIntervalAugmentedUnison      = 1,
    WMDiatonicIntervalMajorSecond           = 2,
    WMChromaticIntervalDiminishedThird      = 2,
    WMDiatonicIntervalMinorThird            = 3,
    WMChromaticIntervalAugmentedSecond      = 3,
    WMDiatonicIntervalMajorThird            = 4,
    WMChromaticIntervalDiminishedFourth     = 4,
    WMDiatonicIntervalPerfectFourth         = 5,
    WMChromaticIntervalAugmentedThird       = 5,
    WMDiatonicIntervalAugmentedFourth       = 6,
    WMDiatonicIntervalDiminishedFifth       = 6,
    WDLatinIntervalTritone                  = 6,
    WMDiatonicIntervalPerfectFith           = 7,
    WMChromaticIntervalDiminishedSixth      = 7,
    WMDiatonicIntervalMinorSixth            = 8,
    WMChromaticIntervalAugmentedFith        = 8,
    WMDiatonicIntervalMajorSixth            = 9,
    WMChromaticIntervalDiminishedSeventh    = 9,
    WMDiatonicIntervalMinorSeventh          = 10,
    WMChromaticIntervalAugmentedSixth       = 10,
    WMDiatonicIntervalMajorSeventh          = 11,
    WMChromaticIntervalDiminishedOctave     = 11,
    WMDiatonicIntervalPerfectOctave         = 12,
    WMChromaticIntervalAugmentedSeventh     = 12
};
typedef enum WMInterval  WMInterval;



static NSString *WMScaleModeChromatic = @"Chromatic";
static NSString *WMScaleModeMajor = @"Major";
static NSString *WMScaleModeNaturalMinor = @"Natural Minor";
static NSString *WMScaleModeHarmonicMinor = @"Harmonic Minor";
static NSString *WMScaleModeMelodicMinor = @"Melodic Minor";
static NSString *WMScaleModeIonian = @"Ionian";
static NSString *WMScaleModeDorian = @"Dorian";
static NSString *WMScaleModePhrygian = @"Phrygian";
static NSString *WMScaleModeLydian = @"Lydian";
static NSString *WMScaleModeMixolydian = @"Mixolydian";
static NSString *WMScaleModeAeolian = @"Aeolian";
static NSString *WMScaleModeLocrian = @"Locrian";
static NSString *WMScaleModeGypsyMinor = @"Gypsy Minor";
static NSString *WMScaleModeWholeTone = @"Whole Tone";
static NSString *WMScaleModeMajorPentatonic = @"Major Pentatonic";
static NSString *WMScaleModeMinorPentatonic = @"Minor Pentatonic";

static NSString *WMChordTypeMajor = @"Major";
static NSString *WMChordTypeMajor6 = @"Major 6";
static NSString *WMChordTypeMajor7 = @"Major 7";
static NSString *WMChordTypeMajor9 = @"Major 9";
static NSString *WMChordTypeMajor69 = @"Major 69";
static NSString *WMChordTypeMajor11 = @"Major 11";
static NSString *WMChordTypeMajor13 = @"Major 13";
static NSString *WMChordTypeMinor = @"Minor";
static NSString *WMChordTypeMinor6 = @"Minor 6";
static NSString *WMChordTypeMinor7 = @"Minor 7";
static NSString *WMChordTypeMinor9 = @"Minor 9";
static NSString *WMChordTypeMinor69 = @"Minor 69";
static NSString *WMChordTypeMinor11 = @"Minor 11";
static NSString *WMChordTypeMinor13 = @"Minor 13";
static NSString *WMChordTypeDominant7 = @"Dominant 7";
static NSString *WMChordTypeNinth = @"Ninth";
static NSString *WMChordTypeEleventh = @"Eleventh";
static NSString *WMChordTypeThirteenth = @"Thirteenth";
static NSString *WMChordTypeDiminished = @"Diminished";
static NSString *WMChordTypeHalfDiminished7 = @"Half Diminished 7";
static NSString *WMChordTypeDiminished7 = @"Diminished 7";
static NSString *WMChordTypeAugmented = @"Augmented";
static NSString *WMChordTypeAugmented7 = @"Augmented 7";
static NSString *WMChordTypeSus4 = @"Sus4";
static NSString *WMChordTypeSeventhSus4 = @"Seventh sus4";
static NSString *WMChordTypeMinorMajor = @"Minor major";
