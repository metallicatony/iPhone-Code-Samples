//
//  LRButtonClickViewController.h
//  LRButtonClick
//
//  Created by Sriram Kanniah on 12/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRButtonClickViewController : UIViewController {
	UILabel *statusText;

}

@property (nonatomic, retain) IBOutlet UILabel *statusText;
- (IBAction) buttonPressed:(id)sender;

@end

