//
//  WMChords.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMData.h"
#import "WMNoteCollection.h"


@class WMNote;

@interface WMChord : WMNoteCollection

- (id)initWithRootNote:(WMNote *)aNote forType:(WMChordType *)aType inversion:(WMChordInversion)inv;

- (NSString *)name;

- (WMChord *)transpose:(WMInterval)interval;

@end
