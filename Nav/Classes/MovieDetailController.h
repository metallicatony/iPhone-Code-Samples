//
//  MovieDetailController.h
//  Nav
//
//  Created by Sriram Kanniah on 3/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MovieDetailController : UIViewController {
	UILabel *label;
	NSString *movieDesc;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) NSString *movieDesc;

@end
