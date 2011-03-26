//
//  SimpleTableViewViewController.m
//  SimpleTableView
//
//  Created by Sriram Kanniah on 2/1/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "SimpleTableViewViewController.h"

@implementation SimpleTableViewViewController

@synthesize listData;
@synthesize tableView;

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
	NSArray *array = [[NSArray alloc] initWithObjects:@"Kapil Dev", @"Sachin Tendulkar", @"Virendar Sehwag", 
					  @"Rahul Dravid", @"Mohammad Kaif", @"Yusuf Pathan", @"Ashwin", @"Zaheer Khan", nil];
	self.listData = array;
//	self.tableView.dataSource = self;
//	self.tableView.delegate = self;
//	self.tableView.style = 

	[array release];
    [super viewDidLoad];
}



- (NSInteger)tableView:(UITableView *)mytableView numberOfRowsInSection:(NSInteger)section {
	return [self.listData count];
}


- (CGFloat)tableView:(UITableView *)mytableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 60;
}


- (UITableViewCell *)tableView:(UITableView *)mytableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *simpleIdentifier = @"SimpleIdentifier";
	UITableViewCell *cell = [mytableView dequeueReusableCellWithIdentifier:simpleIdentifier];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleIdentifier] autorelease];
	}
	
	NSUInteger row = [indexPath row];
	cell.textLabel.text = [self.listData objectAtIndex:row];
	
	if (row % 2 == 0) {
		cell.detailTextLabel.text = @"Batsman";
		cell.imageView.image = [UIImage imageNamed:@"star.png"];
	}
	else {
		cell.detailTextLabel.text = @"Bowler";
		cell.imageView.image = [UIImage imageNamed:@"star2.png"];
	}
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
	self.listData = nil;
	self.tableView = nil;
}


- (void)dealloc {
	[self.listData release];
	[self.tableView release];
    [super dealloc];
}

@end
