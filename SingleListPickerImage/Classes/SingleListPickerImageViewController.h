//
//  SingleListPickerImageViewController.h
//  SingleListPickerImage
//
//  Created by Sriram Kanniah on 1/7/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleListPickerImageViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *pickerView;
	UIImageView *imageView; 
	NSArray *pickerData;
	UIImage *blueImage;
	UIImage *blackImage;

}

@property (nonatomic, retain) IBOutlet UIPickerView *pickerView;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) NSArray *pickerData;
@property (nonatomic, retain) UIImage *blueImage;
@property (nonatomic, retain) UIImage *blackImage;

@end

