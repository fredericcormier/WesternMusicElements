//
//  WMScale.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMScale.h"

@interface WMScale()

@property (strong, nonatomic)NSArray *scale;
@property (strong, nonatomic)WMNote *rootNote;


@end


@implementation WMScale
@synthesize rootNote;
@synthesize scale;

// Designated Initializer

- (id)initWithRoot:(NSString *)aRoot octave:(int)anOctave andMode:(WMChordType)aMode {
    if (self = [super init]) {
        
    }
    return self;
}



- (id)initWithRootNote:(WMNote *)note andMode:(WMChordType)aMode {
    
}

@end
