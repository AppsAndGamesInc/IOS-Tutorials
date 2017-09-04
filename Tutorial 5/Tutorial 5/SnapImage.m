
//
//  SnapImage.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SnapImage.h"

@interface SnapImage ()

@end

@implementation SnapImage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	snapTimerInt =20;
	snapScoreInt = 0;
	snapMode = 0;
	
	self.snapTime.text = [NSString stringWithFormat:@"Time:%i", snapTimerInt];
	self.snapScore.text = [NSString stringWithFormat:@"Score:%i", snapScoreInt];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)snapStartAction:(id)sender {
	if (snapMode == 0) {
	
		[self.snapStartButton setTitle:@"Snap" forState:UIControlStateNormal];
		snapScoreInt = 0;
		self.snapScore.text = [NSString stringWithFormat:@"Score:%i", snapScoreInt];
		snapTimerInt = 20;
		self.snapTime.text = [NSString stringWithFormat:@"Time:%i", snapTimerInt];
		snapTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerCountDown) userInfo:nil repeats:YES];
		imageTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(cardUpdate) userInfo:nil repeats:YES];
		snapMode = 1;
	} else {
		if ([self.cardView1.image isEqual:self.cardView2.image]) {
			snapScoreInt += 1;
			self.snapScore.text = [NSString stringWithFormat:@"Score:%i", snapScoreInt];
		} else {
			snapScoreInt -= 1;
			self.snapScore.text = [NSString stringWithFormat:@"Score:%i", snapScoreInt];
		
		}
		
	}
	
}

-(void)timerCountDown {
	snapTimerInt -= 1;
	self.snapTime.text = [NSString stringWithFormat:@"Time:%i", snapTimerInt];
	if (snapTimerInt == 0) {
		[snapTimer invalidate];
		[imageTimer invalidate];
		
		
		self.cardView1.image = [UIImage imageNamed:@"blue_cover.png"];
		self.cardView2.image = [UIImage imageNamed:@"blue_cover.png"];
		[self.snapStartButton setTitle:@"Start" forState:UIControlStateNormal];
		snapMode = 0;
	}
	
}

-(void)cardUpdate {
	NSArray *cardList = @[@"ace_of_hearts",
						  @"2_of_hearts",
						  @"3_of_hearts",
						  @"4_of_hearts",
						  @"5_of_hearts",
						  @"6_of_hearts",
						  @"7_of_hearts",
						  @"8_of_hearts",
						  @"9_of_hearts",
						  @"10_of_hearts"];
	int randomCard1 = arc4random() % cardList.count;
	int randomCard2 = arc4random() % cardList.count;
	self.cardView1.image = [UIImage imageNamed:cardList[randomCard1]];
	self.cardView2.image = [UIImage imageNamed:cardList[randomCard2]];
}
@end
