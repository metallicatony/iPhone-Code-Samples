//
//  CustomPickerViewController.h
//  CustomPicker
//
//  Created by Sriram Kanniah on 1/31/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *picker;
	UILabel *winLabel;
	NSArray *column1, *column2, *column3, *column4, *column5;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) IBOutlet UILabel *winLabel;
@property (nonatomic, retain) NSArray *column1, *column2, *column3, *column4, *column5;
- (IBAction) spin;

@end

