//
//  SimpleTableViewAppDelegate.h
//  SimpleTableView
//
//  Created by Sriram Kanniah on 2/1/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTableViewViewController;

@interface SimpleTableViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleTableViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleTableViewViewController *viewController;

@end

