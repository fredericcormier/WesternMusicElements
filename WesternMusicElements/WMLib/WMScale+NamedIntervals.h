//
//  WMScale+NamedIntervals.h
//  WesternMusicElements
//
//  Created by Ramon Poca on 08/08/14.
//  Copyright (c) 2014 International MicrOondes. All rights reserved.
//

#import "WMScale.h"

@interface WMScale (NamedIntervals)
- (WMNote *) noteAtDegree: (NSString *) degree;
@end
