//
//  TestNoteController.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <UIKit/UIKit.h>


@class WesternMusicalNote;

@interface TestNoteController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)newRandomNote:(id)sender;
- (IBAction)showPrevious:(id)sender;
- (IBAction)showNext:(id)sender;

@end
