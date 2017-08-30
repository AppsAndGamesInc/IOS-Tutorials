//
//  shakeMeSilly.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "shakeMeSilly.h"

@interface shakeMeSilly ()

@end

@implementation shakeMeSilly

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	shakeTimeInt = 10;
	shakeScoreInt = 0;
	modeInt = 0;
	shakeImageInt = 0;
	
	self.countDownTime.text = [NSString stringWithFormat:@"%i", shakeTimeInt];
	self.shakesCount.text = [NSString stringWithFormat:@"%i", shakeScoreInt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startGameAction:(id)sender {
	self.startGameButton.enabled = NO;
	modeInt = 1;
	[self.startGameButton setTitle:@"Shake It Fast" forState:UIControlStateNormal];
	shakeScoreInt = 0;
	shakeTimeInt = 10;
	self.shakesCount.text = [NSString stringWithFormat:@"%i", shakeScoreInt];
	self.countDownTime.text = [NSString stringWithFormat:@"%i", shakeTimeInt];
	if (shakeTimeInt == 10) {
		shakeMeCounter = [NSTimer scheduledTimerWithTimeInterval:1.0 target: self selector:@selector(updateShakeCounter) userInfo:nil repeats:YES];
	}
}

-(void)updateShakeCounter{
	
	shakeTimeInt -= 1;
	self.countDownTime.text = [NSString stringWithFormat:@"%i", shakeTimeInt];
	if (shakeTimeInt == 0) {
		[shakeMeCounter invalidate];
		self.startGameButton.enabled = YES;
		modeInt = 0;
		[self.startGameButton setTitle:@"Start" forState:UIControlStateNormal];
	}
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	if (event.subtype == UIEventSubtypeMotionShake) {
		if (modeInt == 1) {
			shakeScoreInt++;
			self.shakesCount.text = [NSString stringWithFormat:@"%i", shakeScoreInt];
			
			
			shakeImageInt += 1;
			
			if (shakeImageInt == 5) {
					shakeImageInt = 1;
			}
			NSString *image = [NSString stringWithFormat:@"Maracas%i.png", shakeImageInt];
			self.shakerImg.image = [UIImage imageNamed:image];

		}
		
	}
}
@end
