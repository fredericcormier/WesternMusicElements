//
//  WMChord+RomanNumerals.h
//  WesternMusicElements
//
//  Created by Ramon Poca on 08/08/14.
//  Copyright (c) 2014 International MicrOondes. All rights reserved.
//

#import "WMChord.h"

@interface WMChord (RomanNumerals)
+ (WMChord *) chordWithRoot:(WMNote *) root commonPracticeDegree:(NSString *) degree;
@end
