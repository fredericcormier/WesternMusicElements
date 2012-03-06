//
//  WesternMusicalPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WesternMusicalData.h"

#import "NSArray+CArray.h"



@class WesternMusicalNote;


@interface WesternMusicalPool : NSObject 

+ (WesternMusicalPool *)pool;

- (NSArray *)notes;
- (NSArray *)scaleDefinitions;
- (NSArray *)chordDefinitions;
- (WesternMusicalNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave;
@end
