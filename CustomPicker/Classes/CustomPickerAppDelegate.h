//
//  CustomPickerAppDelegate.h
//  CustomPicker
//
//  Created by Sriram Kanniah on 1/31/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomPickerViewController;

@interface CustomPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CustomPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CustomPickerViewController *viewController;

@end

