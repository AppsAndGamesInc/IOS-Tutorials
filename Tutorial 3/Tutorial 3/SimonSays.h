//
//  SimonSays.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimonSays : UIViewController {
	
	NSTimer *simonTimer;
	NSTimer *simonGameTimer;
	int simonTimeInt;
	int simonScoreInt;
	int simonModInt;
}
@property (strong, nonatomic) IBOutlet UILabel *simonSaysLabel;
@property (strong, nonatomic) IBOutlet UILabel *simonTimeLabel;
@property (strong, nonatomic) IBOutlet UILabel *simonScoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *simonStartGame;

- (IBAction)simonStartAction:(id)sender;
@property(nonatomic, strong) UISwipeGestureRecognizer *leftSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *rightSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *upSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *downSwipe;

@end
