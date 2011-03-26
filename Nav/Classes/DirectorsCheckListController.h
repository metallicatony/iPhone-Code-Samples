//
//  DirectorsCheckListController.h
//  Nav
//
//  Created by Sriram Kanniah on 3/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DirectorsCheckListController : UITableViewController {
	NSArray *directorList;
	NSIndexPath *oldIndexPath;
}

@property (nonatomic, retain) NSArray *directorList;
@property (nonatomic, retain) NSIndexPath *oldIndexPath;
@end
