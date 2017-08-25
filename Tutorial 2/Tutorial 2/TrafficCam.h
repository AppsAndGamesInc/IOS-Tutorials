//
//  TrafficCam.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrafficCam : UIViewController {
	
	NSTimer *lightCounter;
	NSTimer *scoreTimer;
	int lightInt;
	int scoreInt;
}
@property (strong, nonatomic) IBOutlet UIImageView *trafficCam;
@property (strong, nonatomic) IBOutlet UILabel *gameCounter;
@property (strong, nonatomic) IBOutlet UIButton *startStopButton;

- (IBAction)start:(id)sender;

@end
