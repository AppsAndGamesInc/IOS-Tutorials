//
//  UIViewstuto.m
//  Tutorial 4
//
//  Created by Marwan Harb on 8/31/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "UIViewstuto.h"

@interface UIViewstuto ()

@end

@implementation UIViewstuto

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.viewOne.hidden = YES;
	self.viewTwo.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showViewAction:(id)sender {
	
	self.viewOne.hidden = NO;
}

- (IBAction)showViewAction2:(id)sender {
	
	self.viewTwo.hidden = NO;
}

- (IBAction)dismissViewOne:(id)sender {
	
	self.viewOne.hidden = YES;
}
- (IBAction)dismissView2:(id)sender {
	
	self.viewTwo.hidden = YES;
}
@end
