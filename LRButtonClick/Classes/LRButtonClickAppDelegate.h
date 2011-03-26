//
//  LRButtonClickAppDelegate.h
//  LRButtonClick
//
//  Created by Sriram Kanniah on 12/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LRButtonClickViewController;

@interface LRButtonClickAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LRButtonClickViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LRButtonClickViewController *viewController;

@end

