//
//  TimeAndDate.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeAndDate : UIViewController {
	
	NSTimer *newTimer;

}
@property (strong, nonatomic) IBOutlet UILabel *time;
@property (strong, nonatomic) IBOutlet UILabel *date;

@end
