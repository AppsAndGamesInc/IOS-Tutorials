//
//  TapMeFast.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapMeFast : UIViewController {
	
	NSTimer *countDownCounter;
	int timeInt;
	int tapInt;
}
@property (strong, nonatomic) IBOutlet UILabel *tapMeCounter;
@property (strong, nonatomic) IBOutlet UILabel *tapsLabel;
@property (strong, nonatomic) IBOutlet UIButton *tapMeButtonOutlet;
@property (strong, nonatomic) IBOutlet UIButton *startButtonOutlet;

- (IBAction)tapMeButton:(id)sender;
- (IBAction)startButton:(id)sender;

@end
