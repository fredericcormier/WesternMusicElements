//
//  WMNote.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMData.h"


@interface WMNote : NSObject



- (id)initWithRoot:(NSString *)aRoot 
        accidental:(NSString *)anAccidental 
          atOctave:(int)anOctave
     withMidiNoteNumber:(int)aMidiNoteNumber
         andCpspch:(float)cpspchValue
       atFrequency:(float)freq
      forShortName:(NSString *)aShortName;

- (NSString *)shortDescription;

- (NSComparisonResult)compare:(WMNote *)otherNote;
- (WMNote *)noteAtInterval:(WMInterval)semitones;
- (WMNote *)nextNote;
- (WMNote *)previousNote;
- (WMInterval)intervalFrom:(WMNote *)otherNote;
- (BOOL)isEqualToNote:(WMNote *)otherNote;

- (NSString *)root;
- (NSString *)accidental;
- (int)octave;
- (int)midiNoteNumber;
- (float)cpspch;
- (float)frequency;
- (NSString *)shortName;
@end
