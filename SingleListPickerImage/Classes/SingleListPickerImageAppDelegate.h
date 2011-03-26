//
//  SingleListPickerImageAppDelegate.h
//  SingleListPickerImage
//
//  Created by Sriram Kanniah on 1/7/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SingleListPickerImageViewController;

@interface SingleListPickerImageAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SingleListPickerImageViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SingleListPickerImageViewController *viewController;

@end

