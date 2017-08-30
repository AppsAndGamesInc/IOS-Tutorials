//
//  DelayedActionsTutorial.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "DelayedActionsTutorial.h"

@interface DelayedActionsTutorial ()

@end

@implementation DelayedActionsTutorial

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)delayButtonAction:(id)sender {
	[self performSelector:@selector(delay) withObject:nil afterDelay:5.0];
	
}

-(void)delay {
	self.delayedLAbel.text = @"Hello";
}
@end
