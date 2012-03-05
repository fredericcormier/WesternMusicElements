//
//  WesternMusicalNote.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WesternMusicalNote : NSObject


- (id)initWithRoot:(NSString *)aRoot accidental:(NSString *)anAccidental andOctave:(int)anOctave;


@property(strong, nonatomic)NSString *root;
@property(strong, nonatomic)NSString *accidental;
@property(assign, nonatomic)int octave;

@end
