//
//  WMPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMData.h"
#import "WMNote.h"




@class WMNote;
@class WMScale;
@class WMChord;

@interface WMPool : NSObject 

@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)NSDictionary* scaleDefinitions;
@property (strong, nonatomic)NSDictionary* chordDefinitions;

+ (WMPool *)pool;

- (WMNote *)noteWithShortName:(NSString *)aShortName;
- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave;
- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber;

- (WMScale *)scaleWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave scaleMode:(WMScaleMode *)mode;
- (WMScale *)scaleWithRootNote:(WMNote *)rootNote scaleMode:(WMScaleMode *)mode;
- (WMScale *)scaleWithRootShortName:(NSString *)name scaleMode:(WMScaleMode *)mode;

- (WMChord *)chordWithRootNote:(WMNote *)rootNote chordType:(WMChordType *)aType inversion:(int)theInversion;
- (WMChord *)chordWithRootShortName:(NSString *)name chordType:(WMChordType *)aType inversion:(int)theInversion;



@end
