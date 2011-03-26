//
//  MultiControlExampleAppDelegate.h
//  MultiControlExample
//
//  Created by Sriram Kanniah on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultiControlExampleViewController;

@interface MultiControlExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MultiControlExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MultiControlExampleViewController *viewController;

@end

