//
//  AutoRotateAppDelegate.h
//  AutoRotate
//
//  Created by Sriram Kanniah on 12/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AutoRotateViewController;

@interface AutoRotateAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AutoRotateViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AutoRotateViewController *viewController;

@end

