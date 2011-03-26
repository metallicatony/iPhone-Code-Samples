    //
//  MovieListController.m
//  Nav
//
//  Created by Sriram Kanniah on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MovieListController.h"
#import "MovieDetailController.h"
//#import "NavAppDelegate.h"


@implementation MovieListController

@synthesize movieDict;
@synthesize movieNamesArray;
@synthesize movieDetailController;
//@synthesize navigationController;

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
	NSString *pathForDictionary = [[NSBundle mainBundle] pathForResource:@"Movies" ofType:@"plist"];
	NSLog (@"Path of dictionary file: %@\n", pathForDictionary);
	
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:pathForDictionary];
	self.movieDict = dict;
	
	NSArray *array = [self.movieDict allKeys];
	NSArray *sortedArray = [array sortedArrayUsingSelector:@selector (compare:)];
	self.movieNamesArray = sortedArray;
	
	NSLog(@"Count of Movie Dictionary items: %d", [self.movieDict count]);
	NSLog(@"Count of Movie Array items: %d", [self.movieNamesArray count]);
	
	self.title = @"Animation Movies";
	UIBarButtonItem *backButton = [[UIBarButtonItem	alloc] initWithTitle:@"Movies" style:UIBarButtonItemStyleBordered target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
	
	[dict release];
    [super viewDidLoad];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.movieNamesArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *MovieNameCell = @"MovieNameCell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MovieNameCell];
	
	if (cell == nil) {
		NSLog(@"Creating TableView Cell..");
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MovieNameCell] autorelease];
	}
	
	NSInteger row = [indexPath row];
	NSString *rowString = [self.movieNamesArray objectAtIndex:row]; 
	cell.textLabel.text = rowString;
	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
	
	return cell;
}


- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	// Determine the movie name using the row number of tableview
	int row = [indexPath row];
	NSString *movieName = [movieNamesArray objectAtIndex:row];
	
	// If movieDetailController is nil, then create one.. else use the existing one and set its message 
	if (self.movieDetailController == nil) {
		NSLog(@"Creating movieDetailController from movieListController..");
		movieDetailController = [[MovieDetailController alloc] init];
	}
	
	// Set Movie Name and Movie title for Movie Detail Controller
	self.movieDetailController.movieDesc = [self.movieDict valueForKey:movieName];
	self.movieDetailController.title = movieName;
	NSLog(@"Movie Title: %@", self.movieDetailController.title);
	
	// Push Movie Controller to the Navigation Controller stack
	[self.navigationController pushViewController:self.movieDetailController animated:YES];
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
	self.movieDict = nil;
	self.movieNamesArray = nil;
	self.movieDetailController = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[self.movieDict release];
	[self.movieNamesArray release];
	[self.movieDetailController release];
    [super dealloc];
}


@end
