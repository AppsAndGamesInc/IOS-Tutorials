//
//  TrafficCam.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "TrafficCam.h"

@interface TrafficCam ()

@end

@implementation TrafficCam

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	scoreInt =0;
	self.gameCounter.text = [NSString stringWithFormat:@"%i" , scoreInt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {

	if (scoreInt == 0){
		self.gameCounter.text = @"0";
		lightInt = 3;
		self.trafficCam.image = [UIImage imageNamed:@"TrafficLight.png"];
		[lightCounter invalidate];
		lightCounter = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];

	} else {
		[scoreTimer invalidate];
		scoreInt = 0;
		[self.startStopButton setTitle:@"Start" forState:UIControlStateNormal];
	}
}

-(void)startCounter {
	lightInt -= 1;
	[self.startStopButton setTitle:@"Stop" forState:UIControlStateNormal];
	
	if (lightInt == 2) {
		self.trafficCam.image = [UIImage imageNamed:@"TrafficLight3.png"];
	} else if( lightInt == 1){
		self.trafficCam.image = [UIImage imageNamed:@"TrafficLight2.png"];
	} else if (lightInt == 0){
		self.trafficCam.image = [UIImage imageNamed:@"TrafficLight1.png"];
		
		[lightCounter invalidate];
		
		scoreTimer = [NSTimer scheduledTimerWithTimeInterval: 0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
		
		
	}
	
}
-(void)scoreCounter {
	scoreInt +=1;
	self.gameCounter.text = [NSString stringWithFormat:@"%i", scoreInt];
}
@end
