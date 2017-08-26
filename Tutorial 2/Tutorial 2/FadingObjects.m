//
//  FadingObjects.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/26/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "FadingObjects.h"

@interface FadingObjects ()

@end

@implementation FadingObjects

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)fadeIn:(id)sender {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	
	[self.fadingLabel setAlpha:1.0];
	[self.segmentControl setAlpha: 1.0];
	[self.fadingSwitch setAlpha: 1.0];
	
	[UIView commitAnimations];
}

- (IBAction)fadeOut:(id)sender {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	
	[self.fadingSwitch setAlpha:0];
	[self.segmentControl setAlpha:0];
	
	[UIView commitAnimations];
}

- (IBAction)whatsMyAlpha:(id)sender {
	if (self.fadingSwitch.alpha == 1) {
		self.myAlpha.text =@"The alpha is at 1";
	} else {
		self.myAlpha.text = @"The alpha is at 0";
	}
}

- (IBAction)hide:(id)sender {
	self.fadingSwitch.hidden = YES;
	self.fadeInEnablDisa.enabled = NO;
	self.segmentControl.hidden = YES;
}

- (IBAction)reveal:(id)sender {
	self.fadingSwitch.hidden = NO;
	self.segmentControl.hidden = NO;
	self.fadeInEnablDisa.enabled = YES;
}
@end
