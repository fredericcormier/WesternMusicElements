//
//  WMNoteCollectionViewController.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 13/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMNoteCollectionViewController.h"
#import "WMCustomCell.h"

@interface WMNoteCollectionViewController ()

@property (strong, nonatomic) WMScale *scale;
@property (strong, nonatomic) WMChord *chord;
@property (strong, nonatomic) NSArray *allModeKeys;
@property (strong, nonatomic) NSArray *allTypeKeys;
@property (assign, nonatomic) WMNoteCollectionType noteCollectionType;

@end

@implementation WMNoteCollectionViewController
@synthesize tableView;
@synthesize noteCollectionPicker;
@synthesize scale = scale_;
@synthesize chord = chord_;
@synthesize allModeKeys = allModeKeys_;
@synthesize allTypeKeys = allTypeKeys_;
@synthesize noteCollectionType = noteCollectionType_;


- (id)initForCollectionType:(WMNoteCollectionType)collectionType; {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        noteCollectionType_ = collectionType;
        
        if ([self noteCollectionType] == WMCollectionTypeScale) {
            [tbi setTitle:NSLocalizedString(@"Scales", nil)];
            [tbi setImage:[UIImage imageNamed:@"four_note_scale.png"]];
            allModeKeys_ = [[[WMPool pool] scaleDefinitions] allKeys];
        }
        else {
            allTypeKeys_ = [[[WMPool pool] chordDefinitions] allKeys];
            [tbi setTitle:NSLocalizedString(@"Chords", nil)];
            [tbi setImage:[UIImage imageNamed:@"chord_icon2.png"]];
        }
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [[self tableView] setDelegate:self];
    [[self tableView] setDataSource:self];
    [[self tableView] setBackgroundColor:[UIColor whiteColor]];
    [self.view bringSubviewToFront:self.noteCollectionPicker];
    [[self noteCollectionPicker] setDelegate:self];
    [[self noteCollectionPicker] setDataSource:self];
    [[self noteCollectionPicker] becomeFirstResponder];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self showCollection:self];
}

- (void)viewDidUnload {
    [self setTableView:nil];
    [self setNoteCollectionPicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showCollection:(id)sender {
    NSString *pickerNote = noteNames()[[[self noteCollectionPicker] selectedRowInComponent:0]];
    int poctave = [[self noteCollectionPicker] selectedRowInComponent:1] - 1;
    NSString *pickerOctave = [NSString stringWithFormat:@"%d", poctave];
    NSString *pickerShortName = [NSString stringWithFormat:@"%@%@", pickerNote, pickerOctave];
    
    if ([self noteCollectionType] == WMCollectionTypeScale) {
        NSString *pickerModeKey = [self allModeKeys][[[self noteCollectionPicker] selectedRowInComponent:2]];
        WMScale *theScale = [[WMPool pool] scaleWithRootShortName:pickerShortName scaleMode:pickerModeKey];
        [self setScale:theScale];
        //NSLog(@"%@",theScale);
    }
    else if ([self noteCollectionType] == WMCollectionTypeChord) {
        NSString *pickerTypeKey = [self allTypeKeys][[[self noteCollectionPicker] selectedRowInComponent:2]];
        int pickerInversion = [[self noteCollectionPicker] selectedRowInComponent:3];
        WMChord *theChord = [[WMPool pool] chordWithRootShortName:pickerShortName chordType:pickerTypeKey inversion:pickerInversion];
        [self setChord:theChord];
        //NSLog(@"%@", theChord);
    }
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
    WMCustomCell *cell;
    
    cell = [[self tableView] dequeueReusableCellWithIdentifier:basicCellName];
    if (!cell) {
        cell = [[WMCustomCell alloc] initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier :basicCellName];
    }
    [[cell textLabel] setTextAlignment:UITextAlignmentCenter];
    
    if ([indexPath row] == 0) {
        [[cell textLabel] setFont:WMSystemFont];
        if ([self noteCollectionType] == WMCollectionTypeScale)
            [[cell textLabel] setText:[[self scale] name]];
        else
            [[cell textLabel] setText:[[self chord] name]];
    }
    
    if ([indexPath row] == 1) {
        [[cell textLabel] setFont:WMMonoSpaceFont];
        if ([self noteCollectionType] == WMCollectionTypeScale)
            [[cell textLabel] setText:[[self scale] StringWithNoteShortNames]];
        else
            [[cell textLabel] setText:[[self chord] StringWithNoteShortNames]];
    }
    
    if ([indexPath row] == 2) {
        [[cell textLabel] setFont:WMMonoSpaceFont];
        if ([self noteCollectionType] == WMCollectionTypeScale)
            [[cell textLabel] setText:[[self scale] StringWithMidiNoteNumbers]];
        else
            [[cell textLabel] setText:[[self chord] StringWithMidiNoteNumbers]];
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

- (void)     tableView:(UITableView *)tableView
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

- (void)     tableView:(UITableView *)tableView
    moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath
           toIndexPath:(NSIndexPath *)destinationIndexPath {
}

#pragma  mark - UIPickerView things
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    //For Scales: Note  Octave Mode
    if ([self noteCollectionType] == WMCollectionTypeScale)
        return 3;
    //For Chords: Note Octave Type Inversion
    else
        return 4;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    switch ([self noteCollectionType]) {
        case WMCollectionTypeScale:
            if (component == 0) {
                return [noteNames() count];
            }
            if (component == 1) {
                return 11; //from -1 to 9
            }
            if (component == 2) {
                return [[[WMPool pool] scaleDefinitions] count];
            }
            break;
            
        case WMCollectionTypeChord:
            
            if (component == 0) {
                return [noteNames() count];
            }
            if (component == 1) {
                return 11; //from -1 to 9
            }
            if (component == 2) {
                return [[[WMPool pool] chordDefinitions] count];
            }
            if (component == 3) {
                return 6;// Max of 6 inversion for 13th
            }
            
        default:
            break;
    }
    return 0;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    CGFloat pickerViewWidth = [pickerView bounds].size.width;
    if ([self noteCollectionType] == WMCollectionTypeScale) {
        CGFloat aSixthOfWidth = pickerViewWidth / 6.0;
        if (component == 2) {
            return aSixthOfWidth * 4.0;
        }
        else {
            return aSixthOfWidth;
        }
    }
    else {
        CGFloat aSeventhOfWidth = pickerViewWidth / 7.0;
        if (component ==  2) {
            return aSeventhOfWidth * 3.5;
        }
        else {
            return aSeventhOfWidth;
        }
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [self showCollection:self];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel *label;
    if (view) {
        label = (UILabel *)view;
    }
    else {
        label = [[UILabel  alloc] init];
    }
    switch (component) {
        case 0://note
            [label setText:noteNames()[row]];
            [label sizeToFit];
            break;
            
        case 1://octave
            [label setText:[NSString stringWithFormat:@"%d", row - 1]];
            [label sizeToFit];
            break;
            
        case 2://mode or type
            if ([self noteCollectionType] == WMCollectionTypeScale)
                [label setText:[self allModeKeys][row]];
            else {
                [label setText:[self allTypeKeys][row]];
            }
            [label sizeToFit];
            break;
            
        case 3:// inversion - only happens with chords
            [label setText:[NSString stringWithFormat:@"%d", row]];
            [label sizeToFit];
            break;
            
        default:
            break;
    }
    
    [label setBackgroundColor:[UIColor whiteColor]];
    return label;
}

@end
