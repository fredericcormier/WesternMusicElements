//
//  WMScale.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "WMPool.h"
#import "WMNoteCollection.h"

@interface WMScale : WMNoteCollection


- (id)initWithRootNote:(WMNote *)note forScaleMode:(NSString *)aMode;
- (NSString *)mode;
- (NSString *)name;

@end
