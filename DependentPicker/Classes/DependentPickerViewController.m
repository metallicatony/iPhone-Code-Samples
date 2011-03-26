//
//  DependentPickerViewController.m
//  DependentPicker
//
//  Created by Sriram Kanniah on 1/26/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "DependentPickerViewController.h"

@implementation DependentPickerViewController


@synthesize stateZips,states,zips,pickerView;

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
	NSLog (@"Enter viewDidLoad..\n");
	self.view.backgroundColor = [UIColor whiteColor];
	NSString *pathForDictionary = [[NSBundle mainBundle] pathForResource:@"statedictionary" ofType:@"plist"];
	NSLog (@"Path of dictionary file: %@\n", pathForDictionary);
	NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:pathForDictionary];
	self.stateZips = dictionary;	
	NSLog (@"Count of items in Dictionary: %d", [self.stateZips count]);
	
	NSArray *statesList = [self.stateZips allKeys];
	NSArray *sortedStatesList = [statesList sortedArrayUsingSelector:@selector (compare:)];
	self.states = sortedStatesList;
	
	NSString *state = [sortedStatesList objectAtIndex:0];
	NSLog (@"First State: %@", state);
	NSArray *zipsList = [self.stateZips objectForKey:state];
	self.zips = zipsList;
	NSLog (@"Count of zips for the above state: %d", [self.zips count]);
	
	[zipsList release];
	[dictionary release];
	[super viewDidLoad];
}

#pragma mark - 
#pragma mark Picker Data Source Methods
/* Data Source methods */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 2;
}

#pragma mark Picker Delegate Methods
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	if (component == kStateComponent) {
		return [self.states count];
	}
	return [self.zips count];
}


/* Delegate methods */
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	if (component == kStateComponent) {
		return [self.states objectAtIndex:row];
	}
	return [self.zips objectAtIndex:row];
}


- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
	if (component == kStateComponent) {
		return 200;
	}
	return 90;
}



- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	if (component == kStateComponent) {
		NSString *selectedState = [self.states objectAtIndex:row];
		NSLog (@"Selected State: %@", selectedState);
		NSArray *zipList = [self.stateZips objectForKey:selectedState];
		NSLog (@"Count of new ZIP array: %d", [zipList count]);
		self.zips = zipList;
		
		[self.pickerView selectRow:0 inComponent:kZipComponent animated:YES]; 
		NSLog (@"Selected Row 0 of kZipComponent");		
		[self.pickerView reloadComponent:kZipComponent];
		NSLog (@"kZipComponent Reloaded..");
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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.zips = nil;
	self.states = nil;
	self.stateZips = nil;
	self.pickerView = nil;
	[super viewDidUnload];
}


- (void)dealloc {
	[self.zips release];
	[self.states release];
	[self.stateZips release];
	[self.pickerView release];
    [super dealloc];
}

@end
