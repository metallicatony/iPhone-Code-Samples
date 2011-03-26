//
//  SectionAppDelegate.h
//  Section
//
//  Created by Sriram Kanniah on 2/17/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SectionViewController;

@interface SectionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SectionViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SectionViewController *viewController;

@end

