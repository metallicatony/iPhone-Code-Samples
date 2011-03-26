//
//  SimpleTableViewViewController.h
//  SimpleTableView
//
//  Created by Sriram Kanniah on 2/1/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSArray *listData;
	UITableView *tableView;
}

@property (nonatomic, retain) NSArray *listData;
@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end

