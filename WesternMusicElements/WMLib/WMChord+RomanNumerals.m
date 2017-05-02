//
//  WMChord+RomanNumerals.m
//  WesternMusicElements
//
//  Created by Ramon Poca on 08/08/14.
//  Copyright (c) 2014 International MicrOondes. All rights reserved.
//

#import "WMPool.h"
#import "WMChord+RomanNumerals.h"

@implementation WMChord (RomanNumerals)
+ (NSString *) degreeNumerals: (NSString *) degree {
    NSString *reduced = @"";
    for (NSUInteger i=0; i<degree.length; i++) {
        NSString *ch = [degree substringWithRange:NSMakeRange(i, 1)];
        if ([ch isEqualToString:@"i"] || [ch isEqualToString:@"v"] || [ch isEqualToString:@"x"])
            reduced = [reduced stringByAppendingString:ch];
        if ([ch isEqualToString:@"I"] || [ch isEqualToString:@"V"] || [ch isEqualToString:@"X"])
            reduced = [reduced stringByAppendingString:ch];
        
    }
    return reduced;
}

+ (BOOL)isMajor: (NSString *) degree {
    NSString *numeral = [WMChord degreeNumerals:degree];
    return ![[numeral lowercaseString] isEqualToString:numeral];
}

+ (WMChord *) chordWithRoot:(WMNote *) root commonPracticeDegree:(NSString *) degree {
    BOOL major = YES;
    BOOL augmented = NO, diminished = NO;
    NSUInteger addedNote = 0, figuredBass = 0;
    WMChordInversion inversion = WMChordInversionRootPosition;
    WMChordType *type = WMChordTypeMajor;
    NSError *err;
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:@"([ivxIVX]+)([º+])?([0-9]+)?-?([0-9])?([bcd])?" options:0 error:&err];
    NSTextCheckingResult *match = [regexp firstMatchInString:degree options:0 range:NSMakeRange(0, degree.length)];
    
    
    NSRange baseRange = [match rangeAtIndex:1];
    NSRange augDimRange = [match rangeAtIndex:2];
    NSRange addedNoteRange = [match rangeAtIndex:3];
    NSRange figuredBassRange = [match rangeAtIndex:4];
    NSRange inversionRange = [match rangeAtIndex:5];
    
    if (baseRange.location != NSNotFound) {
        NSString *base = [degree substringWithRange:baseRange];
        major = [WMChord isMajor:base];
    }
    
    if (augDimRange.location != NSNotFound) {
        NSString *augDim = [degree substringWithRange:augDimRange];
        if ([augDim isEqualToString:@"+"]) {
            augmented = YES;
        } else if ([augDim isEqualToString:@"º"]){
            diminished = YES;
        }
    }
    
    if (addedNoteRange.location != NSNotFound) {
        NSString *addedNoteStr = [degree substringWithRange:addedNoteRange];
        addedNote = [addedNoteStr integerValue];
    }
    
    if (figuredBassRange.location != NSNotFound) {
        NSString *figuredBassStr = [degree substringWithRange:figuredBassRange];
        figuredBass = [figuredBassStr integerValue];
    }
    
    if (inversionRange.location != NSNotFound) {
        NSString *inversionStr = [degree substringWithRange:inversionRange];
        if ([inversionStr isEqualToString:@"b"]) {
            inversion = WMChordInversionFirst;
        } else if ([inversionStr isEqualToString:@"c"]) {
            inversion = WMChordInversionSecond;
        } else if ([inversionStr isEqualToString:@"d"]) {
            inversion = WMChordInversionThird;
        } else if ([inversionStr isEqualToString:@"e"]) {
            inversion = WMChordInversionFourth;
        } else if ([inversionStr isEqualToString:@"f"]) {
            inversion = WMChordInversionFith;
        } else if ([inversionStr isEqualToString:@"g"]) {
            inversion = WMChordInversionSixth;
        }
    }
    
    if (major) {
        if (augmented) {
            if (addedNote == 7) {
                type = WMChordTypeAugmented7;
            } else {
                type = WMChordTypeAugmented;
            }
        } else if (diminished) {
            if (addedNote == 7) {
                type = WMChordTypeDiminished7;
            } else {
                type = WMChordTypeDiminished;
            }
        } else { // Neither aug. or dim.
            switch (addedNote) {
                case 6:
                    type = figuredBass==9?WMChordTypeMajor69:WMChordTypeMajor6;
                    break;
                case 7:
                    type = WMChordTypeMajor7;
                    break;
                case 9:
                    type = WMChordTypeMajor9;
                    break;
                case 11:
                    type = WMChordTypeMajor11;
                    break;
                case 13:
                    type = WMChordTypeMajor13;
                    break;
                default:
                    type = WMChordTypeMajor;
            }
        }
    } else { // Minor
        if (augmented) {
            if (addedNote == 7) {
                type = WMChordTypeAugmented7;
            } else {
                type = WMChordTypeAugmented;
            }
        } else if (diminished) {
            if (addedNote == 7) {
                type = WMChordTypeDiminished7;
            } else {
                type = WMChordTypeDiminished;
            }
        } else { // Neither aug. or dim.
            switch (addedNote) {
                case 6:
                    type = figuredBass==9?WMChordTypeMinor69:WMChordTypeMinor6;
                    break;
                case 7:
                    type = WMChordTypeMinor7;
                    break;
                case 9:
                    type = WMChordTypeMinor9;
                    break;
                case 11:
                    type = WMChordTypeMinor11;
                    break;
                case 13:
                    type = WMChordTypeMinor13;
                    break;
                default:
                    type = WMChordTypeMinor;
            }
        }
    }
    
    
    return [[WMPool pool] chordWithRootNote:root chordType:type inversion:inversion];
}
@end
