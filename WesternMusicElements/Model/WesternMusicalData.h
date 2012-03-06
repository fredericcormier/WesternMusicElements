//
//  WesternMusicalData.h
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


/*
 
            SCALES
 
 */
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


int CScaleValueChromatic[13];      
int CScaleValueMajor[8];           
int CScaleValueNaturalMinor[8];    
int CScaleValueHarmonicMinor[8];   
int CScaleValueMelodicMinor[8];    
int CScaleValueIonian[8];          
int CScaleValueDorian[8];          
int CScaleValuePhrygian[8];        
int CScaleValueLydian[8];          
int CScaleValueMixolydian[8];      
int CScaleValueAeolian[8];         
int CScaleValueLocrian[8];         
int CScaleValueGypsyMinor[8];      
int CScaleValueWholeTone[7];       
int CScaleValuePentatonicMajor[6]; 
int CScaleValuePentatonicMinor[6];  

/*
 
 
            CHORDS
 
 */

int CChordValueMajor[3];
int CChordValueMajor6[4];
int CChordValueMajor7[4];
int CChordValueMajor9[5];
int CChordValueMajor69[5];
int CChordValueMajor11[6];
int CChordValueMajor13[7];
int CChordValueMinor[3];
int CChordValueMinor6[4];
int CChordValueMinor7[4];
int CChordValueMinor9[5];
int CChordValueMinor69[5];
int CChordValueMinor11[6];
int CChordValueMinor13[7];
int CChordValueDominant7[4];
int CChordValueNinth[5];
int CChordValueEleventh[6];
int CChordValueThirteenth[7];
int CChordValueDiminished[3];
int CChordValueHalfDiminished7[4];
int CChordValueDiminished7[4];
int CChordValueAugmented[3];
int CChordValueAugmented7[4];
int CChordValueSus4[3];
int CChordValueSevenSus4[4];
int CChordValueMinorMajor[4];

enum WesternMusicalChordType {
    WMChordTypeMajor = 0,
    WMChordTypeMajor6,
    WMChordTypeMajor7,
    WMChordTypeMajor9,
    WMChordTypeMajor69,
    WMChordTypeMajor11,
    WMChordTypeMajor13,
    WMChordTypeMinor,
    WMChordTypeMinor6,
    WMChordTypeMinor7,
    WMChordTypeMinor9,
    WMChordTypeMinor69,
    WMChordTypeMinor11,
    WMChordTypeMinor13,
    WMChordTypeDominant7,
    WMChordTypeNinth,
    WMChordTypeEleventh,
    WMChordTypeThirteenth,
    WMChordTypeDiminished,
    WMChordTypeHalfDiminished7,
    WMChordTypeDiminished7,
    WMChordTypeAugmented,
    WMChordTypeAugmented7,
    WMChordTypeSus4,
    WMChordTypeSeventhSus4,
    WMChordTypeMinorMajor
};
typedef enum WesternMusicalChordType WesternMusicalChordType;




