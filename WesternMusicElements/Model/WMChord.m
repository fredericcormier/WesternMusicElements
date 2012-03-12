//
//  WMChords.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMChord.h"
#import "WMNote.h"
#import "WMPool.h"

@interface WMChord()
@property (strong, nonatomic)NSArray *notes;
@property (strong, nonatomic)WMNote *rootNote;
@property (assign, nonatomic)NSString * type;
@property (assign, nonatomic)WMChordInversion inversion;
@property (strong, nonatomic)NSArray *definition;

- (WMChord *)transpose:(WMInterval)semitones;
- (NSArray *)invertArray:(NSArray *) inArray:(WMChordInversion)inv;

@end



@implementation WMChord 
@synthesize notes, rootNote, type, inversion, definition;


- (id)initWithRootNote:(WMNote *)aNote forType:(WMChordType *)aType inversion:(WMChordInversion)inv {
    if (self = [super init]) {
        rootNote = aNote;
        type = aType;
        inversion = inv;
        definition = [self invertArray:[[[WMPool pool] chordDefinitions] valueForKey:aType] :inv];    
    }
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (NSNumber *n in definition) {
        [tempArray addObject:[[WMPool pool] noteWithMidiNoteNumber:[rootNote midiNoteNumber]+[n intValue]]];
    }
    notes = tempArray;
    return self;
}



- (WMChord *)transpose:(WMInterval)semitones {
   
}




//TODO: Make sure the inversion exist for the chord - throw exeption or something
- (NSArray *)invertArray:(NSArray *) inArray:(WMChordInversion)inv{
    if (inv == WMChordInversionRootPosition) {
        return inArray;
    }else {
        NSMutableArray *marray = [NSMutableArray arrayWithArray:inArray];
        for (WMChordInversion i = 0; i < inv; i++) {
            NSNumber *head = [marray objectAtIndex:0];
            [marray removeObjectAtIndex:0];
            [marray addObject:[NSNumber numberWithInt:[head intValue] + 12]];
        }
        return marray;
    }
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Chord: %@ %@ inversion %d is %@",
            [[self rootNote] shortName],
            [self type],
            [self inversion],
            [self notes]];
}
@end
