//
//  WMNote.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
/*
 
 
    [self midiValue] is the same value as the index where this object resides
    in the [WMPool pool] elements]
    in other words the array is sorted by midiNote numbers from 0 to 127
    thus, this Note Object Can be found at:
    [[[WMPool pool] elements] objectAtIndex:[self midiValue]]
 
 
 */
#import "WMNote.h"
#import "WMPool.h"




@implementation WMNote


@synthesize root = root_;
@synthesize accidental = accidental_;
@synthesize octave = octave_;
@synthesize shortName = shortName_;
@synthesize midiNoteNumber = midiNoteNumber_;
@synthesize cpspch = cpspch_;
@synthesize frequency = frequency_;


/* Designated intializer */
- (id)initWithRoot:(NSString *)aRoot 
        accidental:(NSString *)anAccidental 
          atOctave:(int)anOctave
     withMidiValue:(int)mValue
         andCpspch:(float)cpspchValue
       atFrequency:(float)freq
      forShortName:(NSString *)aShortName{
    
    if (self = [super init]) {
        root_ = [aRoot uppercaseString];
        accidental_ = anAccidental;
        octave_ = anOctave;
        midiNoteNumber_ = mValue;
        cpspch_ = cpspchValue;
        frequency_ = freq;
        shortName_ = aShortName;
    }
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Note:%@, %@, %d, midi:%d, cpspch:%.2f, frequency:%.2f, for %@",
            [self root], 
            [self accidental], 
            [self octave],
            [self midiNoteNumber],
            [self cpspch],
            [self frequency],
            [self shortName]];
}

- (NSString *)shortDescription {
    return [NSString stringWithFormat:@"Note %@ num:%d freq:%.2f", [self shortName], [self midiNoteNumber], [self frequency]];
}

- (NSComparisonResult )compare:(WMNote *)otherNote {
    if ([self midiNoteNumber] == [otherNote midiNoteNumber]) {
        return NSOrderedSame;
    }else if ([self midiNoteNumber] < [otherNote midiNoteNumber]) {
        return NSOrderedAscending;
    }else {
        return NSOrderedDescending;
    }    
}


- (WMNote *)noteAtInterval:(WMInterval)semitones {
   // return [[[WMPool pool] notes] objectAtIndex:[self midiValue] + semitones ];
    return [[WMPool pool] noteWithMidiNoteNumber:[self midiNoteNumber] + semitones ];
}


- (WMInterval)intervalFrom:(WMNote *)otherNote {
    return abs([self midiNoteNumber] - [otherNote midiNoteNumber]);
}


- (WMNote *)nextNote {
    return [self noteAtInterval:WMDiatonicIntervalMinorSecond];
    
}
- (WMNote *)previousNote {
    return [self noteAtInterval: - WMDiatonicIntervalMinorSecond];
    
}


@end
