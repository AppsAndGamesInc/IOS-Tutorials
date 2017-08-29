//
//  DigitalClockTut.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "DigitalClockTut.h"

@interface DigitalClockTut ()

@end

@implementation DigitalClockTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.timeLabel.text = @"";
	self.settingsView.hidden = YES;
	self.settingsView.alpha = 0.25;
	
	timeTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateClock {
	NSDateFormatter *formater = [[NSDateFormatter alloc] init];
	[formater setDateFormat:@"hh:mm:ss"];
	self.timeLabel.text = [formater stringFromDate:[NSDate date]];
}


- (IBAction)clockColor:(id)sender {
	if (self.segmentClock.selectedSegmentIndex == 0) {
		self.timeLabel.textColor = [UIColor whiteColor];
	} else if (self.segmentClock.selectedSegmentIndex == 1) {
		self.timeLabel.textColor = [UIColor blackColor];
	} else if (self.segmentClock.selectedSegmentIndex == 2) {
		self.timeLabel.textColor = [UIColor greenColor];
	} else if (self.segmentClock.selectedSegmentIndex == 3) {
		self.timeLabel.textColor = [UIColor redColor];
	}
}

- (IBAction)backgroundColor:(id)sender {
	if (self.segmentBackground.selectedSegmentIndex == 0) {
		self.view.backgroundColor = [UIColor blackColor];
	} else if (self.segmentBackground.selectedSegmentIndex == 1) {
		self.view.backgroundColor = [UIColor whiteColor];
	} else if (self.segmentBackground.selectedSegmentIndex == 2) {
		self.view.backgroundColor = [UIColor greenColor];
	} else if (self.segmentBackground.selectedSegmentIndex == 3) {
		self.view.backgroundColor = [UIColor yellowColor];
	}
}

- (IBAction)settingsAction:(id)sender {
	if (self.settingsView.hidden == NO) {
		self.settingsView.hidden = YES;
		self.settingsView.alpha = 0.25;
		[self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
	} else {
		self.settingsView.hidden = NO;
		self.settingsView.alpha = 1;
		[self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
	}
}
@end
