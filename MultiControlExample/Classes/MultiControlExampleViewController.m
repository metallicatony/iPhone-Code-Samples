//
//  MultiControlExampleViewController.m
//  MultiControlExample
//
//  Created by Sriram Kanniah on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MultiControlExampleViewController.h"

@implementation MultiControlExampleViewController

@synthesize nameField;
@synthesize numberField;
@synthesize sliderValue;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize button;

bool animate = YES;

- (IBAction) textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];
}

- (IBAction) didTapBackground:(id)sender {
	NSLog(@"Inside didTapBackground method...");
	[nameField resignFirstResponder];
	[numberField resignFirstResponder];
}

- (IBAction) didSliderValueChange:(id)sender {
	UISlider *slider = (UISlider *) sender;
//	NSLog(@"Inside didSliderValueChange method.. %d", (int) (slider.value + 0.5f) );
	sliderValue.text = [NSString stringWithFormat:@"%d", (int) (slider.value)];
}

- (IBAction) didSwitchValueChange:(id)sender {
	UISwitch *whichswitch = (UISwitch *) sender;
	BOOL value = whichswitch.isOn;
	[leftSwitch setOn:value animated:YES];
	[rightSwitch setOn:value animated:YES];
}

- (IBAction) didSegmentIndexValueChange:(id)sender {
	NSInteger indexValue = [sender selectedSegmentIndex];
	if (indexValue == kSegmentIndex) {
		leftSwitch.hidden = NO;
		rightSwitch.hidden = NO;
		button.hidden = YES;
	}
	else {
		leftSwitch.hidden = YES;
		rightSwitch.hidden = YES;
		button.hidden = NO;
	}
}

- (IBAction) didPressButton:(id)sender {
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Ok" otherButtonTitles:nil];
	[actionSheet showInView:self.view];
	[actionSheet release];
}

/*
- (void) dismissWithClickedButtonIndex:(NSInteger)buttonIndex{
	NSLog (@"You pressed the actionsheet button..");
} */


- (void)actionSheet:(UIActionSheet *)myActionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
//	NSLog (@"You pressed the actionsheet button.. %d", buttonIndex);
	NSString *msg = nil;
	if (buttonIndex == [myActionSheet destructiveButtonIndex]) {
		if (nameField.text.length > 0) {
			msg = [NSString stringWithFormat:@"Hello %@!", nameField.text];		
		}
		else {
			msg = [NSString stringWithFormat:@"Please enter your name!"];
		}
	}
	else {
		msg = [NSString stringWithFormat:@"Please OK in the action sheet to see the greeting!"];
	}
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Notice" message:msg delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
	[alertView show];
	[alertView release];
	msg = nil;
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
	self.view.backgroundColor = [UIColor whiteColor];
	if (!button.isHidden) {
		button.hidden = YES;
	}
	if (leftSwitch.isHidden) {
		leftSwitch.hidden = NO;
	}
	if (rightSwitch.hidden) {
		rightSwitch.hidden = NO;
	}
	
	/* Use white button for normal state */
	
//	button.contentEdgeInsets = UIEdgeInsetsMake(-10,-10,-10,-10);
	UIImage *imageStateNormal = [[UIImage imageNamed:@"whiteButton.png"] stretchableImageWithLeftCapWidth:10 topCapHeight:0];
	[button setBackgroundImage:imageStateNormal forState:UIControlStateNormal];
	UIImage *imageStateSelected = [[UIImage imageNamed:@"blueButton.png"] stretchableImageWithLeftCapWidth:10 topCapHeight:0];
	[button setBackgroundImage:imageStateSelected forState:UIControlStateSelected];
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
	self.nameField = nil;
	self.numberField = nil;
	self.sliderValue = nil;
	self.leftSwitch = nil;
	self.rightSwitch = nil;
	self.button = nil;
}


- (void)dealloc {
	[nameField release];
	[numberField release];
	[sliderValue release];
	[leftSwitch release];
	[rightSwitch release];
	[button release];
    [super dealloc];
}

@end
