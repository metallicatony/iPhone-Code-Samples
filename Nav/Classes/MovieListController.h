//
//  MovieListController.h
//  Nav
//
//  Created by Sriram Kanniah on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieDetailController;
@interface MovieListController : UITableViewController {
	NSDictionary *movieDict;
	NSArray *movieNamesArray;
	MovieDetailController *movieDetailController;
//	UINavigationController *navigationController;
}

@property (nonatomic, retain) NSDictionary *movieDict;
@property (nonatomic, retain) NSArray *movieNamesArray;
@property (nonatomic, retain) MovieDetailController *movieDetailController;
// Below Navigation Controller Outlet is connected in IB to Navigation Controller of Navigation App Delegate
//@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
