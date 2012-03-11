//
//  WesternMusicElementsTests.m
//  WesternMusicElementsTests
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WesternMusicElementsTests.h"
#import "WMPool.h"
@interface WesternMusicElementsTests ()
{
    WMNote *c;
    WMNote *cLowerCase;
    
    WMNote *c1, *g1, *b0;
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

    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testNotes
{
    STAssertNotNil(c , @" c should not be nil");
    STAssertNotNil(cLowerCase, @" c lower case should not be nil");
    STAssertTrue([[c1 noteAtInterval:WMDiatonicIntervalPerfectFith] isEqualToNote:g1], @"c1 and g1 are a fith appart");
    STAssertTrue([[b0 nextNote] isEqualToNote:c1], @"b0 next note is c1");

}

@end
