//
//  WMPool.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMPool.h"
#import "WMNote.h"
#import "WMScale.h"
#import "WMPool+Loading.h"



static WMPool *pool;

@interface WMPool() 



@end

@implementation WMPool
@synthesize notes, scaleDefinitions, chordDefinitions;

+ (WMPool *)pool {
    if (!pool) {
        pool = [[super allocWithZone:NULL] init];
    }
    return pool;
}


+ (id)allocWithZone:(NSZone *)zone { return [self pool]; };


- (id)init {
    if (pool) 
        return pool;
    else {
        if((self = [super init])){
            notes =[self prepareNotes];
            scaleDefinitions =[self loadScaleDefinitions];
            chordDefinitions =[self loadChordDefinitions];
        }
    }
    return self;
}


#pragma mark - Notes

- (WMNote *)noteWithShortName:(NSString *)aShortName {
    for (WMNote *note in [self notes]) {
        if ([[note valueForKey:@"shortName"] isEqualToString:aShortName]) {
            return note;
        }
    }
    return nil;
}



- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave {
    NSString *resolvedAccidental = anAccidental ? anAccidental : @"";
    NSString *noteName = [NSString stringWithFormat:@"%@%@%d", [aRoot uppercaseString], resolvedAccidental, anOctave];
    return [self noteWithShortName:noteName];
}




- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber {
    if ((midiNoteNumber >= 0) && (midiNoteNumber < 128)) {        
        return [[self notes] objectAtIndex:midiNoteNumber];
    }else {
        return nil;
    }
}

#pragma mark - Scales

- (WMScale *)scaleWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave scaleMode:(WMScaleMode)mode {
    
}


- (WMScale *)scaleWithRootNote:(WMNote *)rootNote scaleMode:(WMScaleMode)mode {
    return [[WMScale alloc] initWithRootNote:rootNote forScaleMode:mode];
}

@end
