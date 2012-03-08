//
//  WMPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMData.h"

#import "NSArray+IMOCArray.h"



@class WMNote;


@interface WMPool : NSObject 

+ (WMPool *)pool;

- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave;

- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber;
@end
