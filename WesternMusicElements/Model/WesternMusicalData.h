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
/*
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
*/
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




