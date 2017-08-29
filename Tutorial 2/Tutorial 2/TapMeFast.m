//
//  TapMeFast.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "TapMeFast.h"

@interface TapMeFast ()

@end

@implementation TapMeFast

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	timeInt = 10;
	tapInt = 0;
	
	self.tapMeCounter.text = [NSString stringWithFormat:@"%i", timeInt];
	self.tapsLabel.text = [NSString stringWithFormat:@"%i" , tapInt];
	self.tapMeButtonOutlet.enabled = NO;
	self.tapMeButtonOutlet.alpha = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapMeButton:(id)sender {
	tapInt++;
	self.tapsLabel.text = [ NSString stringWithFormat:@"%i", tapInt];
}

- (IBAction)startButton:(id)sender {
	if (timeInt == 10) {
		countDownCounter = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector: @selector(countDown) userInfo:nil repeats:YES];
		tapInt = 0;
		self.tapsLabel.text = [NSString stringWithFormat:@"%i", tapInt];
		self.tapMeButtonOutlet.enabled = YES;
		self.tapMeButtonOutlet.alpha = 1;
		self.startButtonOutlet.enabled = NO;
		self.startButtonOutlet.alpha = 0.5;
	}
}

-(void)countDown {

	timeInt -=1;
	self.tapMeCounter.text = [NSString stringWithFormat:@"%i", timeInt];
	
	if (timeInt == 0) {
	
		[countDownCounter invalidate];
		self.tapMeButtonOutlet.enabled = NO;
		self.tapMeButtonOutlet.alpha = 0.5;
		self.startButtonOutlet.enabled = YES;
		self.startButtonOutlet.alpha = 1;
		timeInt = 10;
		self.tapMeCounter.text = [NSString stringWithFormat:@"%i", timeInt];
	}
	
}
@end
