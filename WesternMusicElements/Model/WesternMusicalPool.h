//
//  WesternMusicalPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WesternMusicalData.h"
#import "NSArray+CArray.h"






@interface WesternMusicalPool : NSObject {

    
}

+ (WesternMusicalPool *)pool;

- (NSArray *)notes;
- (NSArray *)scales;
@end
