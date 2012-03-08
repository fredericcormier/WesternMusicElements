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
     withMidiValue:(int)mValue
         andCpspch:(float)cpspchValue
       atFrequency:(float)freq
      forShortName:(NSString *)aShortName;

- (NSString *)shortDescription;

- (NSComparisonResult)compare:(WMNote *)otherNote;
- (WMNote *)noteAtInterval:(WMInterval)semitones;
- (WMNote *)nextNote;
- (WMNote *)previousNote;
- (WMInterval)intervalFrom:(WMNote *)otherNote;

@property(strong, nonatomic)NSString *root;
@property(strong, nonatomic)NSString *accidental;
@property(strong, nonatomic)NSString *shortName;
@property(assign, nonatomic)int octave;
@property(assign, nonatomic)int midiNoteNumber;
@property(assign, nonatomic)float cpspch;
@property(assign, nonatomic)float frequency;

@end
