//
//  LRButtonClickViewController.m
//  LRButtonClick
//
//  Created by Sriram Kanniah on 12/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "LRButtonClickViewController.h"

@implementation LRButtonClickViewController

@synthesize statusText;

- (IBAction) buttonPressed:(id)sender {
	NSString *labelText = [NSString stringWithFormat:@"%@ Pressed!!", [sender titleForState:UIControlStateNormal]];
	statusText.text = labelText;
}
	

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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.view.backgroundColor = [UIColor blackColor];
	statusText.text = [NSString stringWithFormat:@"Press any of the buttons above and see here!!"];
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
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.statusText = nil;
}


- (void)dealloc {
	[statusText release];
    [super dealloc];
}

@end
