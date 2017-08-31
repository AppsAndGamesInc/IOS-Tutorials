//
//  SimonSays.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SimonSays.h"

@interface SimonSays ()

@end

@implementation SimonSays

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(simonHandleSwipes:)];
	self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(simonHandleSwipes:)];
	self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(simonHandleSwipes:)];
	self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(simonHandleSwipes:)];
	
	self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
	self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
	self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
	self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
	
	[self.view addGestureRecognizer:self.leftSwipe];
	[self.view addGestureRecognizer:self.rightSwipe];
	[self.view addGestureRecognizer:self.upSwipe];
	[self.view addGestureRecognizer:self.downSwipe];
	
	simonTimeInt = 20;
	simonScoreInt =0;
	simonModInt = 0;
	
	self.simonTimeLabel.text = [NSString stringWithFormat:@"Time: %i", simonTimeInt];
	self.simonScoreLabel.text = [NSString stringWithFormat:@"Score: %i", simonScoreInt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)simonStartAction:(id)sender {
	self.simonStartGame.enabled = NO;
	self.simonStartGame.alpha = 0.5;
	[self.simonStartGame setTitle:@"Have Fun" forState:UIControlStateNormal];
	
	[simonGameTimer invalidate];
	simonTimeInt = 20;
	self.simonTimeLabel.text = [NSString stringWithFormat:@"Time: %i", simonTimeInt];
	
	simonModInt = 1;
	
	if (simonTimeInt == 20) {
		simonGameTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonUpdateTimer) userInfo:nil repeats:YES];
		[self simonSays];
	}
}

-(void)simonUpdateTimer{
	simonTimeInt -= 1;
	self.simonTimeLabel.text = [NSString stringWithFormat:@"Time: %i", simonTimeInt ];
	if (simonTimeInt == 0) {
		[simonGameTimer invalidate];
		[simonTimer invalidate];
		
		self.simonSaysLabel.text = @"Game Over";
		
		self.simonStartGame.enabled = YES;
		self.simonStartGame.alpha = 1;
		[self.simonStartGame setTitle:@"Start Game" forState:UIControlStateNormal];
	}
}

-(void)simonSays {
	NSArray *simonArray = @[@"Simon Says Swipe Left",@"Simon Says Swipe Right",@"Simon Says Swipe Up", @"Simon Says Swipe Down",@"Swipe Left",@"Swipe Right",@"Swipe Up", @"Swipe Down"];
	int randomWord = arc4random() %simonArray.count;
	self.simonSaysLabel.text = simonArray[randomWord];
	simonTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonSays) userInfo:nil repeats:NO];
}

-(void)simonHandleSwipes:(UISwipeGestureRecognizer *)sender {
	if (simonModInt == 1) {
		if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
			[simonTimer invalidate];
			if ([self.simonSaysLabel.text isEqualToString:@"Simon Says Swipe Left"]) {
				simonScoreInt += 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			} else {
				simonScoreInt -= 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			}
		}
		if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
			[simonTimer invalidate];
			if ([self.simonSaysLabel.text isEqualToString:@"Simon Says Swipe Right"]) {
				simonScoreInt += 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			} else {
				simonScoreInt -= 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			}
		}
		if (sender.direction == UISwipeGestureRecognizerDirectionUp) {
			[simonTimer invalidate];
			if ([self.simonSaysLabel.text isEqualToString:@"Simon Says Swipe Up"]) {
				simonScoreInt += 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			} else {
				simonScoreInt -= 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			}
		}
		if (sender.direction == UISwipeGestureRecognizerDirectionDown) {
			[simonTimer invalidate];
			if ([self.simonSaysLabel.text isEqualToString:@"Simon Says Swipe Down"]) {
				simonScoreInt += 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			} else {
				simonScoreInt -= 1;
				self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
				[self simonSays];
			}
		}
	}
	
	
}

@end
