//
//  NSArray+CArray.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "NSArray+IMOCArray.h"

@implementation NSArray (IMOCArray) 

+ (NSArray *)IMOArrayWithCArray:(int [])carray ofLength:(int)length {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < length; i++) {
        [tempArray addObject:[NSNumber numberWithInt:carray[i]]];
    }
    return tempArray;
}

@end
