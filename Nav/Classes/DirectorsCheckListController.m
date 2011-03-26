//
//  DirectorsCheckListController.m
//  Nav
//
//  Created by Sriram Kanniah on 3/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DirectorsCheckListController.h"


@implementation DirectorsCheckListController
@synthesize directorList;
@synthesize oldIndexPath;

#pragma mark -
#pragma mark Initialization

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
	NSArray *array = [[NSArray alloc] 
					  initWithObjects:@"Martin Scorsese", @"Quentin Tarantino", 
					  @"Steven Spielberg", @"Alfred Hitchcock", @"James Cameron",
					  @"Coen Brothers", @"Francis Ford Coppola", @"Clint Eastwood", 
					  @"Wachowski Brothers", nil];
	self.directorList = array;
	self.oldIndexPath = nil;
	[array release];
    [super viewDidLoad];
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

/* - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [directorList count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"DirectorsCheckList";
	NSUInteger row = [indexPath row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSString *name = [self.directorList objectAtIndex:row];
	cell.textLabel.text = name;
	cell.accessoryType = UITableViewCellAccessoryNone;
    return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if (oldIndexPath == nil) {
		// Set the accessory type to checkmark for the new cell
		UITableViewCell *newCell = [self.tableView cellForRowAtIndexPath:indexPath];
		newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		self.oldIndexPath = indexPath;
	}
	else {
		// Set the accessory type to NONE in the old cell and set it to checkmark for the new cell
		UITableViewCell *oldCell = [self.tableView cellForRowAtIndexPath:self.oldIndexPath];
		oldCell.accessoryType = UITableViewCellAccessoryNone;
		UITableViewCell *newCell = [self.tableView cellForRowAtIndexPath:indexPath];
		newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		self.oldIndexPath = indexPath;
	}
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	self.directorList = nil;
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[directorList release];
    [super dealloc];
}


@end

