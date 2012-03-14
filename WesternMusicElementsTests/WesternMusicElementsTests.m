//
//  WesternMusicElementsTests.m
//  WesternMusicElementsTests
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WesternMusicElementsTests.h"
#import "WMScale.h"
#import "WMPool.h"
#import "WMChord.h"

@interface WesternMusicElementsTests ()
{
    WMNote *c;
    WMNote *cLowerCase;    
    WMNote *c1, *g1, *b0, *gSharp5;
    WMScale *fSharp2Mixolydian, *C2MajorScale;
    NSString *fSharp2MixolydianString;
    WMChord *C3MajorChord, *C3MajorChordInv2;
    
    
}
@end
@implementation WesternMusicElementsTests

- (void)setUp
{
    [super setUp];
    c = [[WMPool pool] noteWithShortName:@"C5"];
    cLowerCase = [[WMPool pool]noteWithShortName:@"c4"];
    c1 = [[WMPool pool]noteWithShortName:@"c1"];
    g1 = [[WMPool pool] noteWithShortName:@"g1"];
    b0 = [[WMPool pool] noteWithShortName:@"b0"];
//    fSharp2Mixolydian = [[WMPool pool] scaleWithRootShortName:@"F#2" scaleMode:WMScaleModeMixolydian];
    fSharp2Mixolydian = [[WMPool pool] scaleWithRoot:@"f" accidental:@"#" octave:2 scaleMode:WMScaleModeMixolydian];
    fSharp2MixolydianString = @"F#2 G#2 A#2 B2 C#3 D#3 E3 F#3 ";
    C2MajorScale = [[WMPool pool] scaleWithRoot:@"c" accidental:nil octave:2 scaleMode:WMScaleModeMajor];
    C3MajorChord = [[WMPool pool] chordWithRootShortName:@"C3" chordType:WMChordTypeMajor inversion:WMChordInversionRootPosition];    
    C3MajorChordInv2 = [[WMPool pool] chordWithRootShortName:@"C3" chordType:WMChordTypeMajor inversion:WMChordInversionSecond];  
    gSharp5 = [[WMPool pool]noteWithRoot:@"g" accidental:@"#" octave:5];

}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testEasyNotes
{
    STAssertNotNil(c , @" c should not be nil");
    STAssertNotNil(cLowerCase, @" c lower case should not be nil");
    STAssertTrue([[c1 noteAtInterval:WMDiatonicIntervalPerfectFith] isEqualToNote:g1], @"c1 and g1 are a fith appart");
    STAssertTrue([[b0 nextNote] isEqualToNote:c1], @"b0 next note is c1");
    STAssertTrue([[c1 previousNote] isEqualToNote:b0], @"c1 previous note is b0");
    STAssertTrue([gSharp5 midiNoteNumber] == 80,@"G#5 is note #80");

}


- (void)testScales {
    STAssertTrue([[fSharp2Mixolydian notesShortNames] isEqualToString: fSharp2MixolydianString], @"Incorrect shortname string for F#2 Mixolydian"   );
    STAssertTrue([[fSharp2Mixolydian rootNote]isEqualToNote:[[WMPool pool] noteWithShortName:@"f#2"]], @"Incorrect root Note");
    STAssertTrue([[C2MajorScale notesShortNames] isEqualToString:@"C2 D2 E2 F2 G2 A2 B2 C3 "],@"incorrect C2 major representation");
}

- (void)testChords {
    STAssertTrue([[C3MajorChord notesShortNames] isEqualToString:@"C3 E3 G3 "],@"Incorrect C Major chord");
    STAssertTrue([[C3MajorChordInv2 notesShortNames] isEqualToString:@"G3 C4 E4 "],@"Incorrect C Major chord");

}

@end
