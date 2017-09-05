//
//  BackgroundColors.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "BackgroundColors.h"

@interface BackgroundColors ()

@end

@implementation BackgroundColors

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)redBackground:(id)sender {
	self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)greenBackground:(id)sender {
	self.view.backgroundColor = [UIColor greenColor];
}

- (IBAction)blueBackground:(id)sender {
	self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)yellowBackground:(id)sender {
	self.view.backgroundColor = [UIColor yellowColor];
}

- (IBAction)blackBackground:(id)sender {
	self.view.backgroundColor = [UIColor blackColor];
}

- (IBAction)whiteBackground:(id)sender {
	self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)customColor:(id)sender {
	self.view.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:145.0/255.0 blue:0.0/255.0 alpha:1.0];
}
@end
