//
//  RootViewController.m
//  Nav
//
//  Created by Sriram Kanniah on 3/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "MovieListController.h"
#import "DirectorsCheckListController.h"


@implementation RootViewController

@synthesize	navController;
@synthesize	rootList;
@synthesize movieListController;
@synthesize directorsCheckListController;


- (void)viewDidLoad {
	NSLog (@"Loading RootViewController...");
	
	// Create and initialize array
	NSArray *array = [[NSArray alloc] initWithObjects:@"Animation Movies", @"Best Directors", nil];
	self.rootList = array;
	NSLog(@"Count of Root List items: %d", [self.rootList count]);
	
	self.title = @"Oscar nominations";
	UIBarButtonItem *backButton = [[UIBarButtonItem	alloc] initWithTitle:@"Oscars" style:UIBarButtonItemStyleBordered target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
	
	[array release];
    [super viewDidLoad];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.rootList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *identifier = @"RootCell";
	NSLog(@"Creating Root TableView Cell..");
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier] autorelease];
	}
	
	NSInteger row = [indexPath row];
	NSString *rowString = [self.rootList objectAtIndex:row]; 
	cell.textLabel.text = rowString;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	//cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
	
	return cell;
}

# pragma mark - 
# pragma TableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSUInteger row = [indexPath row];
	
	if (row	== 0) {
		if (self.movieListController == nil) {
			self.movieListController = [[MovieListController alloc] init];
		}
		[self.navController pushViewController:self.movieListController animated:YES];
	}
	else if (row == 1) {
		if (self.directorsCheckListController == nil) {
			self.directorsCheckListController = [[DirectorsCheckListController alloc] init];
		}
		[self.navController pushViewController:self.directorsCheckListController animated:YES];
	}
}

/*
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	int row = [indexPath row];
	NSString *movieName = [movieNamesArray objectAtIndex:row];
	
	
	if (movieDetailController == nil) {
		NSLog(@"Creating movieDetailController..");
		self.movieDetailController = [[UIViewController alloc] init];
	}
	
	
	if (label == nil) {
		NSLog(@"Creating movieDetailLabel..");
		CGRect frame = CGRectMake (25, 50, 280, 300);
		label = [[UILabel alloc] initWithFrame:frame];
		label.textAlignment = UITextAlignmentLeft;
		label.numberOfLines = 0;
		[self.movieDetailController.view addSubview:label];
	}
	
	self.label.text = [self.movieDict valueForKey:movieName];
	self.movieDetailController.title = movieName;
	
	if (self.movieDetailController.view.superview == nil) {
		//[self.view addSubview:movieDetailController.view];
		[self.navController pushViewController:movieDetailController animated:YES];
	}
	
} */


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
	self.rootList = nil;
	self.navController = nil;
	self.movieListController = nil;
	self.directorsCheckListController = nil;
	[super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[self.rootList release];
	[self.navController release];
	[self.movieListController release];
	[directorCheckListController release];
    [super dealloc];
}


@end
