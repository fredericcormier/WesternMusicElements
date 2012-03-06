//
//  WesternMusicalNote.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
/*
 
 
    [self midiValue] is the same value as the index where this object resides
    in the [WesternMusicalPool pool] elements]
    in other words the array is sorted by midiNote numbers from 0 to 127
    thus, this Note Object Can be found at:
    [[[WesternMusicalPool pool] elements] objectAtIndex:[self midiValue]]
 
 
 */
#import "WesternMusicalNote.h"
#import "WesternMusicalPool.h"




@implementation WesternMusicalNote


@synthesize root = root_;
@synthesize accidental = accidental_;
@synthesize octave = octave_;
@synthesize shortName = shortName_;
@synthesize midiValue = midiValue_;
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
        midiValue_ = mValue;
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
            [self midiValue],
            [self cpspch],
            [self frequency],
            [self shortName]];
}

- (NSString *)shortDescription {
    return [NSString stringWithFormat:@"Note %@ num:%d freq:%.2f", [self shortName], [self midiValue], [self frequency]];
}

- (NSComparisonResult )compare:(WesternMusicalNote *)otherNote {
    if ([self midiValue] == [otherNote midiValue]) {
        return NSOrderedSame;
    }else if ([self midiValue] < [otherNote midiValue]) {
        return NSOrderedAscending;
    }else {
        return NSOrderedDescending;
    }    
}


- (WesternMusicalNote *)noteAtInterval:(WMInterval)semitones {
   // return [[[WesternMusicalPool pool] notes] objectAtIndex:[self midiValue] + semitones ];
    return [[WesternMusicalPool pool] noteWithMidiNoteNumber:[self midiValue] + semitones ];
}


- (WMInterval)intervalFrom:(WesternMusicalNote *)otherNote {
    return abs([self midiValue] - [otherNote midiValue]);
}


- (WesternMusicalNote *)nextNote {
    return [self noteAtInterval:WMDiatonicIntervalMinorSecond];
    
}
- (WesternMusicalNote *)previousNote {
    return [self noteAtInterval: - WMDiatonicIntervalMinorSecond];
    
}


@end
