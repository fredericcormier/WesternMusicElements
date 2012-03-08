//
//  WMPool+Loading.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 06/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMPool.h"

@interface WMPool (Loading)

- (NSArray *)prepareNotes;
- (NSArray *)loadScaleDefinitions;
- (NSArray *)loadChordDefinitions;

@end
