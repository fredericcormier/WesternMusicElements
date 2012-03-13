//
//  WMScaleTestViewController.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WMSystemFont            [UIFont boldSystemFontOfSize:17.0]

#define WMMonoSpaceFont         [UIFont fontWithName:@"Courier" size:14.0]


@interface WMScaleTestViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIPickerView *scalePicker;
- (IBAction)showScale:(id)sender;

@end
