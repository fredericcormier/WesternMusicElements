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
@class WMScale;


@interface WMPool : NSObject 

@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)NSArray* scaleDefinitions;
@property (strong, nonatomic)NSArray* chordDefinitions;

+ (WMPool *)pool;

- (WMNote *)noteWithShortName:(NSString *)aShortName;
- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave;
- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber;

- (WMScale *)scaleWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave scaleMode:(WMScaleMode)mode;
- (WMScale *)scaleWithRootNote:(WMNote *)rootNote scaleMode:(WMScaleMode)mode;
@end
