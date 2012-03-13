//
//  WMNoteCollection.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WMNote;

@interface WMNoteCollection : NSObject

- (id)initWithRootNote:(WMNote *)note definition:(NSArray *)collectionDefinition;

- (NSArray *)notes;
- (WMNote *)rootNote;
- (NSArray *)definition;

- (NSString *)notesShortNames;

@end
