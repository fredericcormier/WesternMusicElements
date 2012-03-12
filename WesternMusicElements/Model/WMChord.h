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

- (id)initWithRootNote:(WMNote *)aNote forType:(WMChordType *)aType inversion:(WMChordInversion)inv;

@end
