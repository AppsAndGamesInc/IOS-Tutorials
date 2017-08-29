//
//  DigitalClockTut.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DigitalClockTut : UIViewController {
	NSTimer *timeTimer;
}



@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIView *settingsView;
@property (strong, nonatomic) IBOutlet UIButton *settingsButton;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentClock;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentBackground;

- (IBAction)clockColor:(id)sender;
- (IBAction)backgroundColor:(id)sender;
- (IBAction)settingsAction:(id)sender;
@end
