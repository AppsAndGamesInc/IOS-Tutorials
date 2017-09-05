//
//  BananaDance.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "BananaDance.h"

@interface BananaDance ()

@end

@implementation BananaDance

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.bananaView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"banana1.png"],[UIImage imageNamed:@"banana2.png"],[UIImage imageNamed:@"banana3.png"],[UIImage imageNamed:@"banana4.png"],[UIImage imageNamed:@"banana5.png"],[UIImage imageNamed:@"banana6.png"],[UIImage imageNamed:@"banana7.png"],[UIImage imageNamed:@"banana8.png"]	, nil];
	[self.bananaView setAnimationRepeatCount:0];
	self.bananaView.animationDuration = 0.75;
	[self.bananaView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
