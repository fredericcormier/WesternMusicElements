//
//  NSArray+CArray.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CArray)

+ (NSArray *)arrayWithCArray:(int [])carray ofLength:(int)length;

@end
