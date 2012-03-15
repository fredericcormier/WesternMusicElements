//
//  WMNoteCollectionViewController.h
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMData.h"
#define WMSystemFont            [UIFont boldSystemFontOfSize:17.0]
#define WMMonoSpaceFont         [UIFont fontWithName:@"Courier" size:13.0]




@interface WMNoteCollectionViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIPickerView *noteCollectionPicker;

- (id)initForCollectionType:(WMNoteCollectionType)collectionType;

- (IBAction)showCollection:(id)sender;


@end
