//
//  CustomPickerViewController.m
//  CustomPicker
//
//  Created by Sriram Kanniah on 1/31/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "CustomPickerViewController.h"

@implementation CustomPickerViewController


@synthesize picker;
@synthesize winLabel;
@synthesize column1, column2, column3, column4, column5;


- (IBAction) spin {
	BOOL win = NO;
	int oldValue = -1;
	int numInRow = 1;
	
	for (int i = 1; i <= 5; i++) {
		int newValue = rand()%6;
		//NSLog (@"Random number for column %d: %d", i, newValue);
		
		NSLog (@"Old Value: %d, New Value: %d", oldValue, newValue);
		if (oldValue == newValue) {
			numInRow++;
			NSLog (@"numInRow: %d", numInRow);
		}
		else {
			numInRow = 1;
		}
	
		[self.picker selectRow:newValue inComponent:(i-1) animated:YES];
		[self.picker reloadComponent:(i-1)];
		
			oldValue = newValue;
			if (numInRow >= 3) {
				win = YES;
				NSLog (@"WIN boolean set to YES");
			}
	}
	
	if (win == YES)
		self.winLabel.text = @"JACKPOT!!!";
	else 
		self.winLabel.text = @"Spin Again...";
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
	// Create UIImages
/*	UIImage *apple = [UIImage imageNamed:@"apple.png"];
	UIImage *bar = [UIImage imageNamed:@"bar.png"];
	UIImage *cherry = [UIImage imageNamed:@"cherry.png"];
	UIImage *crown = [UIImage imageNamed:@"crown.png"];
	UIImage *lemon = [UIImage imageNamed:@"lemon.png"];
	UIImage *seven = [UIImage imageNamed:@"seven.png"]; */
	
	for (int i = 1; i <= 5; i++) {
		UIImageView *appleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"apple.png"]];
		UIImageView *barView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bar.png"]];
		UIImageView *cherryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cherry.png"]];
		UIImageView *crownView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"crown.png"]];
		UIImageView *lemonView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lemon.png"]];
		UIImageView *sevenView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"seven.png"]];
	
		NSArray *imageViewArray = [[NSArray alloc] initWithObjects:appleView, barView, cherryView, crownView, lemonView, sevenView, nil];
		
		NSString *fieldName = [NSString stringWithFormat:@"column%d", i];
		[self setValue:imageViewArray forKey:fieldName];
		
		[imageViewArray release];
		[sevenView release]; [barView release]; [crownView release]; [cherryView release]; [lemonView release]; [appleView release];
	}
	
	srand(time(NULL));
    [super viewDidLoad];
}

#pragma mark - 
#pragma mark Picker Data Source Methods
/* PickerView Data Source methods*/
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 5;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [self.column1 count];
}


#pragma mark Picker Delegate Methods
/* PickerView Delegate methods */

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
	NSString *fieldName = [NSString stringWithFormat:@"column%d", component+1];
	NSArray *array = [self valueForKey:fieldName];
	return [array objectAtIndex:row];
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
}


- (void)dealloc {
    [super dealloc];
}

@end
