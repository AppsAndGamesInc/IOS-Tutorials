//
//  ShakeGestTutorials.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ShakeGestTutorials.h"

@interface ShakeGestTutorials ()

@end

@implementation ShakeGestTutorials

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	if (event.subtype == UIEventSubtypeMotionShake) {
		self.shakeLabel.text = @"Shake that ass with me";
	}
}
@end
