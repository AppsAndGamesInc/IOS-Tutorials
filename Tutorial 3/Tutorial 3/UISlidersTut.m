//
//  UISlidersTut.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "UISlidersTut.h"

@interface UISlidersTut ()

@end

@implementation UISlidersTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fontSize:(id)sender {
	[self.sliderLabel setFont:[UIFont fontWithName:@"Verdana" size:self.Slider.value]];
}
@end
