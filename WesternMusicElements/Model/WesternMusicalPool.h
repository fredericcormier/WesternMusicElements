//
//  WesternMusicalPool.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WesternMusicalPool : NSObject {

    
    NSArray* elements;

}

+ (WesternMusicalPool *)pool;

- (NSArray *)elements;

@end
