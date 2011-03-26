//
//  AutoRotateViewController.h
//  AutoRotate
//
//  Created by Sriram Kanniah on 12/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#define degreesToRadians(x) (M_PI * (x) / 180.0)

@interface AutoRotateViewController : UIViewController {
	IBOutlet UIButton *portraitLeftButton;
	IBOutlet UIButton *portraitRightButton;
	IBOutlet UIButton *landscapeLeftButton;
	IBOutlet UIButton *landscapeRightButton;
	IBOutlet UIView *portraitView;
	IBOutlet UIView *landscapeView;
}

@property (nonatomic, retain) IBOutlet UIButton *portraitLeftButton;
@property (nonatomic, retain) IBOutlet UIButton *portraitRightButton;
@property (nonatomic, retain) IBOutlet UIButton *landscapeLeftButton;
@property (nonatomic, retain) IBOutlet UIButton *landscapeRightButton;
@property (nonatomic, retain) IBOutlet UIView *portraitView;
@property (nonatomic, retain) IBOutlet UIView *landscapeView;

@end

