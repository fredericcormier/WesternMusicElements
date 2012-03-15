//
//  WMNoteCollectionViewController.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMNoteCollectionViewController.h"
#import "WMPool.h"
#import "WMScale.h"

@interface WMNoteCollectionViewController ()

@property(strong, nonatomic)WMScale *scale;
@property(strong, nonatomic)NSArray *allModeKeys;

@end

@implementation WMNoteCollectionViewController
@synthesize tableView;
@synthesize scalePicker;
@synthesize scale = scale_;
@synthesize allModeKeys = allModeKeys_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        allModeKeys_ = [[[WMPool pool] scaleDefinitions] allKeys];
    }
       return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self tableView] setDelegate:self];
    [[self tableView] setDataSource:self];
    [[self scalePicker] setDelegate:self];
    [[self scalePicker] setDataSource:self];
    
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [self setScalePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showScale:(id)sender {
    NSString *pickerNote = [noteNames() objectAtIndex:[[self scalePicker] selectedRowInComponent:0]];
    int poctave = [[self scalePicker] selectedRowInComponent:1] - 1;
    NSString *pickerOctave = [NSString stringWithFormat:@"%d",poctave];
    
    NSString *pickerShortName = [NSString stringWithFormat:@"%@%@",pickerNote, pickerOctave ];
    NSString *pickerModeKey = [[self allModeKeys] objectAtIndex:[[self scalePicker] selectedRowInComponent:2]];
    
    WMScale *theScale = [[WMPool pool] scaleWithRootShortName:pickerShortName scaleMode:pickerModeKey];
    [self setScale:theScale];
    NSLog(@"%@",theScale);
    [[self tableView] reloadData];
}



#pragma mark - UITableViewControllerDelegate methods -

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (int)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40.0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *basicCellName = @"basicCell";
    UITableViewCell *cell;
    
    cell = [[self tableView] dequeueReusableCellWithIdentifier:basicCellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:basicCellName];
    }
    [[cell textLabel] setTextAlignment:UITextAlignmentCenter];
    
    if ([indexPath row] == 0 ) {
        [[cell textLabel] setFont:WMSystemFont];
        [[cell textLabel] setText:[[self scale] name]];
    }
    
    if ([indexPath row] == 1) {
        [[cell textLabel] setFont:WMMonoSpaceFont];
        [[cell textLabel] setText:[[self scale] notesShortNames]];
    }
    if ([indexPath row] == 2) {
        [[cell textLabel] setFont:WMMonoSpaceFont];
        [[cell textLabel] setText:[[self scale] notesMidiNoteNumberString]];
    }
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    // This next value obfuscated by Apple - this a checkmark
    // for multiple selection: uncomment if needed.
    // const int UITableViewCellEditingStyleCheckmark = 3;
    // Delete is the default
    return UITableViewCellEditingStyleDelete;    
}

- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell = [[self tableView] cellForRowAtIndexPath:indexPath];
    if (selectedCell) { // Whatever
        
    }
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)tableView:(UITableView *)tableView 
moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath
      toIndexPath:(NSIndexPath *)destinationIndexPath {
    
}


#pragma  mark - UIPickerView things
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    // Note Accidental Octave Mode
    return 3;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return [noteNames() count];
    }
    if (component == 1) {
        return 11; //from -1 to 9
    }
    if (component == 2) {
        return [[[WMPool pool] scaleDefinitions] count];
    }
    return 0;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    CGFloat pickerViewWidth = [pickerView bounds].size.width;
    CGFloat aSixthOfWidth = pickerViewWidth / 6.0;
    if (component == 2) {
        return aSixthOfWidth * 4.0;
    } else {
        return aSixthOfWidth;
    }
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    UILabel *label;
    if (view) {
        label = (UILabel *)view;
    }else {
        label = [[UILabel  alloc] init];
    }
    switch (component) {
        case 0:
            [label setText:[noteNames() objectAtIndex:row]];
            [label sizeToFit];
            break;
        case 1:
            [label setText: [NSString stringWithFormat:@"%d", row -1]];
            [label sizeToFit];
            break;
        case 2:
            [label setText: [[self allModeKeys] objectAtIndex:row]];
            [label sizeToFit];
        default:
            break;
    }
    
    [label setBackgroundColor:[UIColor clearColor]];
    return label;
    
}
@end
