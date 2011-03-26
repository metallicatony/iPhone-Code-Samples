//
//  RootViewController.h
//  Nav
//
//  Created by Sriram Kanniah on 3/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MovieListController;
@class DirectorsCheckListController;
@interface RootViewController : UITableViewController {
	UINavigationController *navController;
	NSArray *rootList;
	MovieListController *movieListController;
	DirectorsCheckListController *directorCheckListController;
}

@property (nonatomic, retain) IBOutlet UINavigationController *navController;
@property (nonatomic, retain) NSArray *rootList;
@property (nonatomic, retain) MovieListController *movieListController;
@property (nonatomic, retain) DirectorsCheckListController *directorsCheckListController;

@end
