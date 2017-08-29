//
//  UISwitch.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISwitches : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *switchLabel;
@property (strong, nonatomic) IBOutlet UIButton *uiSwitchButton;
@property (strong, nonatomic) IBOutlet UISwitch *theSwitch;

- (IBAction)switchAction:(id)sender;

@end
