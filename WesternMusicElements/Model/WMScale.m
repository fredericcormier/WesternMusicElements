//
//  WMScale.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import "WMNote.h"
#import "WMScale.h"


@interface WMScale()

@property (assign, nonatomic)NSString * mode;



@end


@implementation WMScale
@synthesize mode;


- (id)initWithRootNote:(WMNote *)note forScaleMode:(NSString *)aMode {
    NSArray *scaleDef = [[[WMPool pool] scaleDefinitions] valueForKey:aMode];
    if (self = [super initWithRootNote:note definition:scaleDef]) {
        mode = aMode;       
    }
    return self;
}









@end
