//
//  WMScale.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//
#import "WMNote.h"
#import "WMScale.h"


@interface WMScale()

@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)WMNote *rootNote;
@property (assign, nonatomic)NSString * mode;
@property (strong, nonatomic)NSArray *definition;


@end


@implementation WMScale
@synthesize rootNote, notes, definition, mode;


- (id)initWithRootNote:(WMNote *)note forScaleMode:(NSString *)aMode {
    if (self = [super init]) {
        
        rootNote = note;
        mode = aMode;
        int rootIndex = [note midiNoteNumber];
        
        definition = [[[WMPool pool] scaleDefinitions] valueForKey:mode];
        
        NSMutableArray *tempScale = [[NSMutableArray alloc] init];
        for (NSNumber *n in definition) {
            WMNote *newNote = [[WMPool pool]noteWithMidiNoteNumber:rootIndex + [n intValue]];
            [tempScale addObject:newNote];
        }  
        notes = tempScale;
    }
    return self;
}


- (NSArray *)notes {
    return notes;
}



- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@",[self rootNote], [self mode], [self notes]];
}
@end
