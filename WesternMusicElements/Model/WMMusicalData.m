//
//  WMData.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 06/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMData.h"

//Scales
int CScaleValueChromatic[13]        = {0,1,2,3,4,5,6,7,8,9,10,11,12};
int CScaleValueMajor[8]             = {0,2,4,5,7,9,11,12};
int CScaleValueNaturalMinor[8]      = {0,2,3,5,7,8,10,12};
int CScaleValueHarmonicMinor[8]     = {0,2,3,5,7,8,11,12};
int CScaleValueMelodicMinor[8]      = {0,2,3,5,7,9,11,12};
int CScaleValueIonian[8]            = {0,2,4,5,7,9,11,12};
int CScaleValueDorian[8]            = {0,2,3,5,7,9,10,12};
int CScaleValuePhrygian[8]          = {0,1,3,5,7,8,10,12};
int CScaleValueLydian[8]            = {0,2,4,6,7,9,11,12};
int CScaleValueMixolydian[8]        = {0,2,4,5,7,9,10,12};
int CScaleValueAeolian[8]           = {0,2,3,5,7,8,10,12};
int CScaleValueLocrian[8]           = {0,1,3,5,6,8,10,12};
int CScaleValueGypsyMinor[8]        = {0,2,3,6,7,8,11,12};
int CScaleValueWholeTone[7]         = {0,2,4,6,8,10,12};
int CScaleValuePentatonicMajor[6]   = {0,2,4,7,9,12};
int CScaleValuePentatonicMinor[6]   = {0,3,5,7,10,12};


//Chords 
int CChordValueMajor[3]             = {0,4,7};
int CChordValueMajor6[4]            = {0,4,7,9};
int CChordValueMajor7[4]            = {0,4,7,11};
int CChordValueMajor9[5]            = {0,4,7,11,14};
int CChordValueMajor69[5]           = {0,4,7,9,14};
int CChordValueMajor11[6]           = {0,4,7,11,14,17};
int CChordValueMajor13[7]           = {0,4,7,11,14,17,21};
int CChordValueMinor[3]             = {0,3,7};
int CChordValueMinor6[4]            = {0,3,7,9};
int CChordValueMinor7[4]            = {0,3,7,10};
int CChordValueMinor9[5]            = {0,3,7,10,14};
int CChordValueMinor69[5]           = {0,3,7,9,14};
int CChordValueMinor11[6]           = {0,3,7,10,14,17};
int CChordValueMinor13[7]           = {0,3,7,10,14,17,21};
int CChordValueDominant7[4]         = {0,4,7,10};
int CChordValueNinth[5]             = {0,4,7,10,14};
int CChordValueEleventh[6]          = {0,4,7,10,14,17};
int CChordValueThirteenth[7]        = {0,4,7,10,14,17,21};
int CChordValueDiminished[3]        = {0,3,6};
int CChordValueHalfDiminished7[4]   = {0,3,6,10};
int CChordValueDiminished7[4]       = {0,3,6,9};
int CChordValueAugmented[3]         = {0,4,8};
int CChordValueAugmented7[4]        = {0,4,8,10};
int CChordValueSus4[3]              = {0,5,7};
int CChordValueSevenSus4[4]         = {0,5,7,10};
int CChordValueMinorMajor[4]        = {0,3,7,11};
