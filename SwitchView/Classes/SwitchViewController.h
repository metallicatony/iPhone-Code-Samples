//
//  SwitchViewController.h
//  SwitchView
//
//  Created by Sriram Kanniah on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlueViewController;
@class YellowViewController;

@interface SwitchViewController : UIViewController {
	BlueViewController *blueViewController;
	YellowViewController *yellowViewController;
}

@property (nonatomic, retain) BlueViewController *blueViewController;
@property (nonatomic, retain) YellowViewController *yellowViewController;

-(IBAction) switchViews:(id)sender;

@end
