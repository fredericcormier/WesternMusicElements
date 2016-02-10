//
//  WMProgression.h
//  WesternMusicElements
//
//  Created by Ramon Poca on 07/08/14.
//  Copyright (c) 2014 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WMProgression : NSObject
@property (strong, nonatomic) WMScale *scale;
@property (strong, nonatomic) NSString *progression;
- (instancetype) initWithProgression: (NSString *) progression scale:(WMScale *) scale;
- (NSArray *) chordsWithRoot:(WMNote *) root;
@end
