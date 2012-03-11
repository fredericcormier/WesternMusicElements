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
}
@end
@implementation WesternMusicElementsTests

- (void)setUp
{
    [super setUp];
    c = [[WMPool pool] noteWithShortName:@"C5"];
    cLowerCase = [[WMPool pool]noteWithShortName:@"c4"];

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

}

@end
