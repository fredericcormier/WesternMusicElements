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
@property (strong, nonatomic)WesternMusicalNote *rootNote;


@end


@implementation WesternMusicalScale
@synthesize rootNote;
@synthesize scale;

// Designated Initializer

- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WesternMusicalScaleMode)aMode {
    if (self = [super init]) {
        
    }
    return self;
}



- (id)initWithRootNote:(WesternMusicalNote *)note andMode:(WesternMusicalScaleMode)aMode {
    
}

@end
