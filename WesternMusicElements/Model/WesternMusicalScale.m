//
//  WesternMusicalScale.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WesternMusicalScale.h"

@interface WesternMusicalScale()

@property (strong, nonatomic)NSArray *scale;

@end


@implementation WesternMusicalScale

@synthesize scale;


- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WesternMusicalScaleMode)aMode {
    if (self = [super init]) {
        
    }
    return self;
}





@end
