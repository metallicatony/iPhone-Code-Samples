//
//  DependentPickerAppDelegate.h
//  DependentPicker
//
//  Created by Sriram Kanniah on 1/26/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DependentPickerViewController;

@interface DependentPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DependentPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DependentPickerViewController *viewController;

@end

