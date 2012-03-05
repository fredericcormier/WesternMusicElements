//
//  WesternMusicalPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
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

@interface WesternMusicalPool : NSObject {

    
}

+ (WesternMusicalPool *)pool;

- (NSArray *)notes;

@end
