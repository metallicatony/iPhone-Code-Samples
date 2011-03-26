//
//  SingleListPickerImageViewController.m
//  SingleListPickerImage
//
//  Created by Sriram Kanniah on 1/7/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "SingleListPickerImageViewController.h"

@implementation SingleListPickerImageViewController

@synthesize pickerView;
@synthesize pickerData;
@synthesize imageView;
@synthesize blueImage;
@synthesize blackImage;


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
	NSArray *array = [[NSArray alloc] initWithObjects:@"Blue", @"Black", nil];
	self.pickerData = array;
	
	self.blueImage = [UIImage imageNamed:@"Blue.jpg"];
	self.blackImage = [UIImage imageNamed:@"Black.jpg"];

	self.imageView.image = blueImage;

	[array release];
    [super viewDidLoad];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [pickerData count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [pickerData objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	NSLog(@"You selected %d \n", row);
	if (row == 0) {
		self.imageView.image = blueImage;
	}
	else if (row == 1) {
		self.imageView.image = blackImage;
	}
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
	self.pickerData = nil;
	self.pickerView = nil;
	self.imageView = nil;
	self.blueImage = nil;
	self.blackImage = nil;
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[pickerData release];
	[pickerView release];
	[imageView release];
    [super dealloc];
}

@end
