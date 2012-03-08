//
//  WMScale.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "WMPool.h"

@interface WMScale : NSObject

- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WMChordType)aMode;

- (id)initWithRootNote:(WMNote *)note andMode:(WMChordType)aMode;

@end
