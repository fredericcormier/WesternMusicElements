//
//  WesternMusicalScale.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "WesternMusicalPool.h"

@interface WesternMusicalScale : NSObject

- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WesternMusicalScaleMode)aMode;

@end
