//
//  AutoRotateViewController.m
//  AutoRotate
//
//  Created by Sriram Kanniah on 12/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "AutoRotateViewController.h"

@implementation AutoRotateViewController

@synthesize portraitLeftButton;
@synthesize portraitRightButton;
@synthesize landscapeLeftButton;
@synthesize landscapeRightButton;
@synthesize portraitView;
@synthesize landscapeView;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
	NSLog(@"Inside willAnimateRotationInterfaceOrientation method...\n");
	if (interfaceOrientation == UIInterfaceOrientationPortrait) {
		self.view = self.portraitView;
		//self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
		self.view.bounds = CGRectMake(0,0,320,460);
	}
	else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		self.view = self.landscapeView;
		//self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90));
		self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
	}/*
	else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
		self.view = self.landscapeView;
		//self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90));
		self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
	}*/
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	NSLog(@"Inside shouldAutorotateToInterfaceOrientation method...\n");
    // Return YES for supported orientations
 //   return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
