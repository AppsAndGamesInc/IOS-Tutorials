//
//  UISwitches.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "UISwitches.h"

@interface UISwitches ()

@end

@implementation UISwitches

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)switchAction:(id)sender {
	if (self.theSwitch.on) {
		self.switchLabel.text = @"The switch is On";
		self.uiSwitchButton.enabled = YES;
	} else {
		self.switchLabel.text = @"The switch is Off";
		self.uiSwitchButton.enabled = NO;
	}
}
@end
