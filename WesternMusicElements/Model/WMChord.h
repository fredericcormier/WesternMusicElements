//
//  WMChords.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMData.h"


@class WMNote;
@interface WMChord : NSObject

- (WMChord *)transpose:(WMInterval)semitones;
- (WMChord *)invert:(WMChordInversion)inv;



// Accessors

- (WMNote *)rootNote;
- (WMChordType *)type;
- (WMChordInversion) invertion;

@end
