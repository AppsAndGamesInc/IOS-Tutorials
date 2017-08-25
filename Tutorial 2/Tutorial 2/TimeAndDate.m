//
//  TimeAndDate.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "TimeAndDate.h"

@interface TimeAndDate ()

@end

@implementation TimeAndDate

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	newTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDateTimer) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)updateDateTimer{
	NSDateFormatter *timerFormatter = [[NSDateFormatter alloc] init];
	[timerFormatter setDateFormat:@"hh:mm:ss"];
	self.time.text = [timerFormatter stringFromDate:[NSDate date]];
	
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"dd-MM-yyyy"];
	self.date.text = [dateFormatter stringFromDate:[NSDate date]];
	
}
@end
