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

@property (assign, nonatomic)NSString * type;
@property (assign, nonatomic)WMChordInversion inversion;



- (NSArray *)invertArray:(NSArray *) inArray:(WMChordInversion)inv;

@end



@implementation WMChord 
@synthesize type, inversion;


- (id)initWithRootNote:(WMNote *)aNote forType:(WMChordType *)aType inversion:(WMChordInversion)inv {
    NSArray *chordDef = [self invertArray:[[[WMPool pool] chordDefinitions] valueForKey:aType] :inv];
    if (!chordDef) {
        return nil;
    }else {
        if (self = [super initWithRootNote:aNote definition:chordDef]) {
            type = aType;
            inversion = inv;            
        }
    }
    return self;
}

//TODO: Make sure the inversion exist for the chord . throw exeption or something


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
    return nil;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"Chord: %@ %@ inversion %d is %@",
            [[self rootNote] shortName],
            [self type],
            [self inversion],
            [self notes]];
}
@end
