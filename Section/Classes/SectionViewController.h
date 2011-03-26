//
//  SectionViewController.h
//  Section
//
//  Created by Sriram Kanniah on 2/17/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SectionViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSDictionary *dictionary;
	NSArray *keys;
	UITableView *myTableView;
}

@property (nonatomic, retain) NSDictionary *dictionary;
@property (nonatomic, retain) NSArray *keys;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;

@end

