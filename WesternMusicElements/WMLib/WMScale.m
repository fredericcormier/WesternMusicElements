//
//  WMScale.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import "WMNote.h"
#import "WMScale.h"
#import "WMPool.h"



@interface WMScale()

@property (assign, nonatomic)NSString * mode;



@end


@implementation WMScale
@synthesize mode = mode_;


- (id)initWithRootNote:(WMNote *)note forScaleMode:(NSString *)aMode {
    NSArray *scaleDef = [[[WMPool pool] scaleDefinitions] valueForKey:aMode];
    if (self = [super initWithRootNote:note definition:scaleDef]) {
        mode_ = aMode;       
    }
    return self;
}

- (NSString *)name {
    return [NSString stringWithFormat:@"%@ %@",[[self rootNote] shortName], [self mode]];
}
- (NSString *)mode {
    return mode_;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"SCALE: %@ %@ \n %@",
            [[self rootNote] shortName], 
            [self mode],
            [self StringWithNoteShortNames]];
}

- (WMScale *)transpose:(WMInterval)interval {
    WMNote *newRootNote = [[self rootNote] noteAtInterval:interval];
    return [self initWithRootNote:newRootNote forScaleMode:[self mode]];
    
}



@end
