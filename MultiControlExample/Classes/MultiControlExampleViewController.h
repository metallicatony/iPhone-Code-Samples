//
//  MultiControlExampleViewController.h
//  MultiControlExample
//
//  Created by Sriram Kanniah on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kSegmentIndex 0
@interface MultiControlExampleViewController : UIViewController <UIActionSheetDelegate> {
	UITextField *nameField;
	UITextField *numberField;
	UILabel *sliderValue;
	UISwitch *leftSwitch;
	UISwitch *rightSwitch;
	UIButton *button;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *numberField;
@property (nonatomic, retain) IBOutlet UILabel *sliderValue;
@property (nonatomic, retain) IBOutlet UISwitch *leftSwitch;
@property (nonatomic, retain) IBOutlet UISwitch *rightSwitch;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction) textFieldDoneEditing:(id)sender;
- (IBAction) didTapBackground:(id)sender;
- (IBAction) didSliderValueChange:(id)sender;
- (IBAction) didSwitchValueChange:(id)sender;
- (IBAction) didSegmentIndexValueChange:(id)sender;
- (IBAction) didPressButton:(id)sender;

@end

