//
//  SnapImage.h
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SnapImage : UIViewController {
	
	NSTimer *snapTimer;
	NSTimer *imageTimer;
	int snapScoreInt;
	int snapTimerInt;
	int snapMode;
}

@property (strong, nonatomic) IBOutlet UILabel *snapTime;
@property (strong, nonatomic) IBOutlet UILabel *snapScore;
@property (strong, nonatomic) IBOutlet UIImageView *cardView1;
@property (strong, nonatomic) IBOutlet UIImageView *cardView2;
@property (strong, nonatomic) IBOutlet UIButton *snapStartButton;

- (IBAction)snapStartAction:(id)sender;

@end
