//
//  WesternMusicalNote.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WesternMusicalNote.h"

@implementation WesternMusicalNote


@synthesize root = root_;
@synthesize accidental = accidental_;
@synthesize octave = octave_;



- (id)initWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental andOctave:(int)anOctave {
    if (self = [super init]) {
        root_ = [aRoot uppercaseString];
        accidental_ = anAccidental;
        octave_ = anOctave;
    }
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"%@, %@, %d",
            [self root], 
            [self accidental], 
            [self octave]];
}
@end
