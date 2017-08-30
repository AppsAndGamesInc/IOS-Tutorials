//
//  shakeMeSilly.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface shakeMeSilly : UIViewController {
	NSTimer *shakeMeCounter ;
	int shakeTimeInt;
	int shakeScoreInt;
	int modeInt;
	int shakeImageInt;
}
@property (strong, nonatomic) IBOutlet UILabel *countDownTime;
@property (strong, nonatomic) IBOutlet UILabel *shakesCount;
@property (strong, nonatomic) IBOutlet UIImageView *shakerImg;
@property (strong, nonatomic) IBOutlet UIButton *startGameButton;


- (IBAction)startGameAction:(id)sender;

@end
