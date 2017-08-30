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
	
	self.simonTimeLabel.text = [NSString stringWithFormat:@"%i", simonTimeInt];
	self.simonScoreLabel.text = [NSString stringWithFormat:@"%i", simonScoreInt];
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
	self.simonTimeLabel.text = [NSString stringWithFormat:@"%i", simonTimeInt];
	
	simonModInt = 1;
	
	if (simonTimeInt == 20) {
		simonGameTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonUpdateTimer) userInfo:nil repeats:YES];
	}
}

-(void)simonUpdateTimer{
	simonTimeInt -= 1;
	self.simonTimeLabel.text = [NSString stringWithFormat:@"%i", simonTimeInt ];
	if (simonTimeInt == 0) {
		[simonGameTimer invalidate];
		
		self.simonStartGame.enabled = YES;
		self.simonStartGame.alpha = 1;
		[self.simonStartGame setTitle:@"Start Game" forState:UIControlStateNormal];
	}
}

-(void)simonHandleSwipes:(UISwipeGestureRecognizer *)sender {
	
	
}

@end
