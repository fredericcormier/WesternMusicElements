//
//  WMData.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 06/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Intervals

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
    WMLatinIntervalTritone                  = 6,
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


#pragma mark - Inversions

/*

    A thirteenth chord has the max of 7 notes
    that gives us a max of 6 inversions
 
 */
enum WMChordInversion {
    WMChordInversionRootPosition = 0,
    WMChordInversionFirst,
    WMChordInversionSecond,
    WMChordInversionThird,
    WMChordInversionFourth,
    WMChordInversionFith,
    WMChordInversionSixth,
};

typedef enum WMChordInversion WMChordInversion;


#pragma mark - Scales


typedef NSString WMScaleMode;

static WMScaleMode *WMScaleModeChromatic = @"Chromatic";
static WMScaleMode *WMScaleModeMajor = @"Major";
static WMScaleMode *WMScaleModeNaturalMinor = @"Natural Minor";
static WMScaleMode *WMScaleModeHarmonicMinor = @"Harmonic Minor";
static WMScaleMode *WMScaleModeMelodicMinor = @"Melodic Minor";
static WMScaleMode *WMScaleModeIonian = @"Ionian";
static WMScaleMode *WMScaleModeDorian = @"Dorian";
static WMScaleMode *WMScaleModePhrygian = @"Phrygian";
static WMScaleMode *WMScaleModeLydian = @"Lydian";
static WMScaleMode *WMScaleModeMixolydian = @"Mixolydian";
static WMScaleMode *WMScaleModeAeolian = @"Aeolian";
static WMScaleMode *WMScaleModeLocrian = @"Locrian";
static WMScaleMode *WMScaleModeGypsyMinor = @"Gypsy Minor";
static WMScaleMode *WMScaleModeWholeTone = @"Whole Tone";
static WMScaleMode *WMScaleModeMajorPentatonic = @"Major Pentatonic";
static WMScaleMode *WMScaleModeMinorPentatonic = @"Minor Pentatonic";


#pragma mark - Chords


typedef NSString WMChordType;


static WMChordType *WMChordTypeMajor = @"Major";
static WMChordType *WMChordTypeMajor6 = @"Major 6";
static WMChordType *WMChordTypeMajor7 = @"Major 7";
static WMChordType *WMChordTypeMajor9 = @"Major 9";
static WMChordType *WMChordTypeMajor69 = @"Major 69";
static WMChordType *WMChordTypeMajor11 = @"Major 11";
static WMChordType *WMChordTypeMajor13 = @"Major 13";
static WMChordType *WMChordTypeMinor = @"Minor";
static WMChordType *WMChordTypeMinor6 = @"Minor 6";
static WMChordType *WMChordTypeMinor7 = @"Minor 7";
static WMChordType *WMChordTypeMinor9 = @"Minor 9";
static WMChordType *WMChordTypeMinor69 = @"Minor 69";
static WMChordType *WMChordTypeMinor11 = @"Minor 11";
static WMChordType *WMChordTypeMinor13 = @"Minor 13";
static WMChordType *WMChordTypeDominant7 = @"Dominant 7";
static WMChordType *WMChordTypeNinth = @"Ninth";
static WMChordType *WMChordTypeEleventh = @"Eleventh";
static WMChordType *WMChordTypeThirteenth = @"Thirteenth";
static WMChordType *WMChordTypeDiminished = @"Diminished";
static WMChordType *WMChordTypeHalfDiminished7 = @"Half Diminished 7";
static WMChordType *WMChordTypeDiminished7 = @"Diminished 7";
static WMChordType *WMChordTypeAugmented = @"Augmented";
static WMChordType *WMChordTypeAugmented7 = @"Augmented 7";
static WMChordType *WMChordTypeSus4 = @"Sus4";
static WMChordType *WMChordTypeSeventhSus4 = @"Seventh sus4";
static WMChordType *WMChordTypeMinorMajor = @"Minor major";
