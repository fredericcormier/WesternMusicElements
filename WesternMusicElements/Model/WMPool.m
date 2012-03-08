//
//  WMPool.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMPool.h"
#import "WMNote.h"
#import "WMPool+Loading.h"


static WMPool *pool;

@interface WMPool() 

@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)NSArray* scaleDefinitions;
@property (strong, nonatomic)NSArray* chordDefinitions;


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




- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave {
    NSString *resolvedAccidental = anAccidental ? anAccidental : @"";
    NSString *noteName = [NSString stringWithFormat:@"%@%@%d", [aRoot uppercaseString], resolvedAccidental, anOctave];
    for (WMNote *note in [self notes]) {
        if ([[note valueForKey:@"shortName"] isEqualToString:noteName]) {
            return note;
        }
    }
    return nil;
}


- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber {
    if ((midiNoteNumber >= 0) && (midiNoteNumber < 128)) {        
        return [[self notes] objectAtIndex:midiNoteNumber];
    }else {
        return nil;
    }
}


@end
