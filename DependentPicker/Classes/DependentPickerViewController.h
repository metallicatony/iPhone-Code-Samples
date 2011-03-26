//
//  DependentPickerViewController.h
//  DependentPicker
//
//  Created by Sriram Kanniah on 1/26/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0
#define kZipComponent 1

@interface DependentPickerViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
	NSDictionary *stateZips;
	NSArray *states;
	NSArray *zips;
	UIPickerView *pickerView;
}

@property (nonatomic, retain) NSDictionary *stateZips;
@property (nonatomic, retain) NSArray *states;
@property (nonatomic, retain) NSArray *zips;
@property (nonatomic, retain) IBOutlet UIPickerView *pickerView;

@end

