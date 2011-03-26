    //
//  SwitchViewController.m
//  SwitchView
//
//  Created by Sriram Kanniah on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@implementation SwitchViewController

@synthesize blueViewController;
@synthesize yellowViewController;

-(IBAction) switchViews:(id)sender {
	if (self.yellowViewController.view.superview == nil) {
		if (self.yellowViewController == nil) {
			YellowViewController *yellowController = [[YellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
			self.yellowViewController = yellowController;
			[yellowController release];
		}
		if ([self.blueViewController isViewLoaded] == YES) {
			NSLog (@"Yes, the blue Controller's view is Loaded..\n");
			[UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionFlipFromLeft 
							animations:^{ 
								[self.blueViewController.view removeFromSuperview]; 
								[self.view insertSubview:self.yellowViewController.view atIndex:0]; 
							} 
							completion:NULL];
			//[self.blueViewController.view removeFromSuperview];
			//[self.view insertSubview:yellowViewController.view atIndex:0];
		}
	}
	else {
		if ( [self.yellowViewController isViewLoaded] == YES) {
			self.yellowViewController.view.alpha = 1.0;
			NSLog (@"Yes, the yellow Controller's view is Loaded..\n");
			[UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCurlUp 
							animations:^{
								[self.yellowViewController.view removeFromSuperview]; 
								[self.view insertSubview:self.blueViewController.view atIndex:0]; 
							} 
							completion:NULL];
		//[yellowViewController.view removeFromSuperview];
		//[self.view insertSubview:blueViewController.view atIndex:0];
		}
	}
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	BlueViewController *blueController = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
	self.blueViewController = blueController;
	[self.view insertSubview:blueController.view atIndex:0];
	[blueController release];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
	if (self.blueViewController.view.superview == nil) {
		self.blueViewController = nil;
	}
	else if (self.yellowViewController.view.superview == nil) {
		self.yellowViewController = nil;
	}
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	self.blueViewController = nil;
	self.yellowViewController = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[blueViewController release];
	[yellowViewController release];
    [super dealloc];
}


@end
