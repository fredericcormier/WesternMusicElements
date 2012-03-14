 //
//  WMNoteCollection.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMNoteCollection.h"
#import "WMNote.h"
#import "WMPool.h"


@interface WMNoteCollection ()

@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)WMNote *rootNote;
@property (strong, nonatomic)NSArray *definition;


@end

@implementation WMNoteCollection

@synthesize rootNote, notes, definition;


// If we root the NoteCollection to high, we may end up with notes that
// are out of range. 
// A solution would be to lower out of range notes one octave down.
// A different solution is to block all notes that are out of range to 127.
// Here we'are talking of notes whose root partials are at 12khz and up.

- (id)initWithRootNote:(WMNote *)note definition:(NSArray *)collectionDefinition {
    if (self = [super init]) {
        rootNote = note;
        NSMutableArray *tempScale = [[NSMutableArray alloc] init];
        for (NSNumber *n in collectionDefinition) {
            int midiNoteNumber = [note midiNoteNumber] + [n intValue];
            // Block out of range notes
            midiNoteNumber = midiNoteNumber > 127 ? 127: midiNoteNumber;
            WMNote *newNote = [[WMPool pool]noteWithMidiNoteNumber:midiNoteNumber];
            [tempScale addObject:newNote];
        }  
        notes = tempScale;
    }
    return self;
    
}

- (NSArray *)notes {
    return notes;
}

- (WMNote *)rootNote {
    return rootNote;
}

- (NSArray *)definition {
    return definition;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"%@  %@",[self rootNote], [self notes]];
}


- (NSString *)notesShortNames {
    NSMutableString *allShortNames = [[NSMutableString alloc] init];
    for (WMNote *n  in [self notes]) {
        [allShortNames appendString:[n shortName]];
        [allShortNames appendString:@" "];
    }
    return allShortNames;
}

- (NSString *)notesMidiNoteNumberString {
    NSMutableString *allNoteNumbers = [[NSMutableString alloc] init ];
    for (WMNote *n in [self notes]) {
        [allNoteNumbers appendFormat:@"%d", [n midiNoteNumber]];
        [allNoteNumbers appendString:@" "];
    }
    return allNoteNumbers;
}
@end
