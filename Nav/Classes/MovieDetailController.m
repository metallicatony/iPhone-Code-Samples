    //
//  MovieDetailController.m
//  Nav
//
//  Created by Sriram Kanniah on 3/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MovieDetailController.h"


@implementation MovieDetailController
@synthesize label;
@synthesize movieDesc;


/*- (void)loadView {
    
	NSLog(@"MovieDetailController - loadView..");
    self.wantsFullScreenLayout = YES;
    
    UIView *myView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
//    myView. = self;
    self.view = myView;
//    self.metronomeView = view;
    
    [myView release];
}*/

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
	NSLog(@"Loading movieDetailLabel..");
	self.view.backgroundColor = [UIColor grayColor];
	CGRect frame = CGRectMake (25, 50, 280, 300);
	UILabel *myLabel = [[UILabel alloc] initWithFrame:frame];
	myLabel.numberOfLines = 0;
	myLabel.textAlignment = UITextAlignmentLeft;
	myLabel.backgroundColor = [UIColor clearColor];
	//myLabel.tag = 0;
	self.label = myLabel;
	[self.view addSubview:myLabel];	
	
	NSLog(@"Ending movieDetailLabel..");
	[myLabel release];
    [super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated {
	NSLog(@"MovieDetailController viewWillAppear..");
	self.label.text = self.movieDesc;
	[super viewWillAppear:animated];
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
	self.label = nil;
	self.movieDesc = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[self.label release];
	[self.movieDesc release];
    [super dealloc];
}


@end
