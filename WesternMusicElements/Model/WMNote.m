//
//  WMNote.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
/*
 
 
    [self midiNoteNumber] is the same value as the index where this object resides
    in the [WMPool pool] elements]
    in other words the array is sorted by midiNote numbers from 0 to 127
    thus, this Note Object Can be found at:
    [[[WMPool pool] elements] objectAtIndex:[self midiNoteNumber]]
 
 
 */
#import "WMNote.h"
#import "WMPool.h"

@interface WMNote () {

NSString *root_;
NSString *accidental_;
NSString *shortName_;
int octave_;
int midiNoteNumber_;
float cpspch_;
float frequency_;

}
@end



@implementation WMNote





/* Designated intializer */
- (id)initWithRoot:(NSString *)aRoot 
        accidental:(NSString *)anAccidental 
          atOctave:(int)anOctave
     withMidiNoteNumber:(int)aMidiNoteNumber
         andCpspch:(float)cpspchValue
       atFrequency:(float)freq
      forShortName:(NSString *)aShortName{
    
    if (self = [super init]) {
        root_ = [aRoot uppercaseString];
        accidental_ = anAccidental;
        octave_ = anOctave;
        midiNoteNumber_ = aMidiNoteNumber;
        cpspch_ = cpspchValue;
        frequency_ = freq;
        shortName_ = aShortName;
    }
    return self;
}


- (NSString *)root {
    return root_;
}
- (NSString *)accidental {
    return accidental_;
}
- (int)octave {
    return octave_;
}
- (int)midiNoteNumber {
    return midiNoteNumber_;
}
- (float)cpspch {
    return cpspch_;
}

- (float)frequency {
    return frequency_;
}
- (NSString *)shortName {
    return shortName_;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Note:%@, %@, %d, midi:%d, cpspch:%.2f, frequency:%.2f, for %@",
            root_, 
            accidental_, 
            octave_,
            midiNoteNumber_,
            cpspch_,
            frequency_,
            shortName_];
}

- (NSString *)shortDescription {
    return [NSString stringWithFormat:@"Note %@ num:%d freq:%.2f", shortName_, midiNoteNumber_, frequency_];
}

- (NSComparisonResult )compare:(WMNote *)otherNote {
    if ( [self midiNoteNumber] == [otherNote midiNoteNumber]) {
        return NSOrderedSame;
    }else if ([self midiNoteNumber]  < [otherNote midiNoteNumber]) {
        return NSOrderedAscending;
    }else {
        return NSOrderedDescending;
    }    
}


- (WMNote *)noteAtInterval:(WMInterval)semitones {
    return [[WMPool pool] noteWithMidiNoteNumber: [self midiNoteNumber] + semitones ];
}


- (WMInterval)intervalFrom:(WMNote *)otherNote {
    return abs([self midiNoteNumber ] - [otherNote midiNoteNumber]);
}


- (WMNote *)nextNote {
    return [self noteAtInterval:WMDiatonicIntervalMinorSecond];
    
}
- (WMNote *)previousNote {
    return [self noteAtInterval: - WMDiatonicIntervalMinorSecond];
    
}

- (BOOL)isEqualToNote:(WMNote *)otherNote {
    return [self midiNoteNumber] == [otherNote midiNoteNumber];
}

@end
