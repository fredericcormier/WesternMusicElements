//
//  WMProgression.m
//  WesternMusicElements
//
//  Created by Ramon Poca on 07/08/14.
//  Copyright (c) 2014 International MicrOondes. All rights reserved.
//

#import "WMPool.h"
#import "WMNote.h"
#import "WMProgression.h"
#import "WMScale+NamedIntervals.h"
#import "WMChord+RomanNumerals.h"

@implementation WMProgression {
}

- (instancetype) initWithProgression: (NSString *) progression scale:(WMScale *) scale  {
    self = [super init];
    if (self) {
        self.progression = progression;
        self.scale = scale;
    }
    return self;
}

- (NSArray *) chordsWithRoot:(WMNote *) root {
    NSArray *result = @[];
    NSArray *components = [self.progression componentsSeparatedByString:@"-"];
    for (NSString *component in components) {
        WMNote *root = [self.scale noteAtDegree:component];
        WMChord *chord = [WMChord chordWithRoot:root commonPracticeDegree:component];
        result = [result arrayByAddingObject:chord];
    }
    return result;
}
@end
