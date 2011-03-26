//
//  SectionViewController.m
//  Section
//
//  Created by Sriram Kanniah on 2/17/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "SectionViewController.h"

@implementation SectionViewController

@synthesize dictionary;
@synthesize keys;
@synthesize myTableView;

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
	NSString *path = [[NSBundle mainBundle] pathForResource:@"sortednames" ofType:@"plist"];
	NSDictionary *namesDict = [[NSDictionary alloc] initWithContentsOfFile:path];
	NSArray *array = [[namesDict allKeys] sortedArrayUsingSelector:@selector(compare:)];
	
	self.dictionary = namesDict;
	self.keys = array;
	self.myTableView.allowsSelection = NO;
	
	[namesDict release];
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return [self.keys count];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSString *keyinSection = [self.keys objectAtIndex:section];
	NSArray *array = [self.dictionary objectForKey:keyinSection];
	return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	return [self.keys objectAtIndex:section];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	return self.keys;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	/* 
	 1) Get section and row
	 2) set identifier and dequeue it
	 3) if cell is nil then create a new one
	 4) Get array object from dict using section
	 5) Using that obj, get the value from the array using row
	 6) set the value of cells text
	 */
	NSInteger section = [indexPath section];
	NSInteger row = [indexPath row];
	
	NSString *keyForSection = [self.keys objectAtIndex:section];
	NSArray *array = [self.dictionary objectForKey:keyForSection];
	
	static NSString *sectionTableIdentifier = @"SectionTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sectionTableIdentifier];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sectionTableIdentifier] autorelease];
	}
	
	NSString *textValue = [array objectAtIndex:row];
	cell.textLabel.text = textValue;
	
	return cell;
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
	self.dictionary = nil;
	self.keys = nil;
}


- (void)dealloc {
	[self.dictionary release];
	[self.keys release];
    [super dealloc];
}

@end
