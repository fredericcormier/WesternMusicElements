//
//  WMChords.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMChord.h"
#import "WMNote.h"

@implementation WMChord {
    
    WMNote *rootNote_;
    WMChordType *type_;
    WMChordInversion invertion_;
    
}

- (id)initWithRootNote:(WMNote *)aNote forType:(WMChordType *)aType invertion:(WMChordInversion)inv {
    
    
}

- (WMNote *)rootNote {
    return rootNote_;
}

- (WMChordType *)type {
    return type_;
}
- (WMChordInversion) invertion{
    return invertion_;
}
- (WMChord *)transpose:(WMInterval)semitones {
    
}
- (WMChord *)invert:(WMChordInversion)inv {
    
}

@end
