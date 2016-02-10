//
//  WMScale+NamedIntervals.m
//  WesternMusicElements
//
//  Created by Ramon Poca on 08/08/14.
//

#import "WMScale+NamedIntervals.h"

@implementation WMScale (NamedIntervals)

- (NSString *) degreeNumerals: (NSString *) degree {
    NSString *reduced = @"";
    for (NSUInteger i=0; i<degree.length; i++) {
        NSString *ch = [degree substringWithRange:NSMakeRange(i, 1)];
        if ([ch isEqualToString:@"i"] || [ch isEqualToString:@"v"] || [ch isEqualToString:@"x"])
            reduced = [reduced stringByAppendingString:ch];
    }
    return reduced;
}
- (int) distanceFromRootForDegree: (NSString *) degree {
    NSString *deg = [self degreeNumerals:[degree lowercaseString]];
    NSDictionary *distances = @{
                                @"i":@(0),
                                @"ii":@(1),
                                @"iii":@(2),
                                @"iv":@(3),
                                @"v":@(4),
                                @"vi":@(5),
                                @"vii":@(6),
                                @"viii":@(7),
                                @"ix":@(8),
                                @"x":@(9),
                                @"xi":@(10),
                                @"xii":@(11),
                                @"xiii":@(12),
                                @"xiv":@(13),
                                @"xv":@(14) // That will be enough? xD
    };
    return [distances[deg] integerValue];
}

- (WMNote *) noteAtDegree: (NSString *) degree {
    int distance = [self distanceFromRootForDegree:degree];
    NSArray *notes = [self notes];
    if (notes.count > distance)
        return notes[distance];
    return nil;
}
@end
