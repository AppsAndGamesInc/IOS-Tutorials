//
//  FadingObjects.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/26/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FadingObjects : UIViewController

@property (strong, nonatomic) IBOutlet UIView *fadingLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (strong, nonatomic) IBOutlet UISwitch *fadingSwitch;
@property (strong, nonatomic) IBOutlet UILabel *myAlpha;

- (IBAction)fadeIn:(id)sender;
- (IBAction)fadeOut:(id)sender;
- (IBAction)whatsMyAlpha:(id)sender;
- (IBAction)hide:(id)sender;
- (IBAction)reveal:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *fadeInEnablDisa;

@end
