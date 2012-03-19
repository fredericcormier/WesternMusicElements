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
#import "WMChord.h"
#import "WMScale.h"






@interface WMPool : NSObject 


+ (WMPool *)pool;

- (NSArray *)allNotes;
- (NSDictionary *)scaleDefinitions;
- (NSDictionary *)chordDefinitions ;



- (WMNote *)noteWithShortName:(NSString *)aShortName;
- (WMNote *)noteWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave;
- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber;

- (WMScale *)scaleWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave scaleMode:(WMScaleMode *)mode;
- (WMScale *)scaleWithRootNote:(WMNote *)rootNote scaleMode:(WMScaleMode *)mode;
- (WMScale *)scaleWithRootShortName:(NSString *)name scaleMode:(WMScaleMode *)mode;

- (WMChord *)chordWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental octave:(int)anOctave chordType:(WMChordType *)aType inversion:(int)theInversion;
- (WMChord *)chordWithRootNote:(WMNote *)rootNote chordType:(WMChordType *)aType inversion:(int)theInversion;
- (WMChord *)chordWithRootShortName:(NSString *)name chordType:(WMChordType *)aType inversion:(int)theInversion;



@end
