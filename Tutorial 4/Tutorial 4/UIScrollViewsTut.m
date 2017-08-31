//
//  UIScrollViewsTut.m
//  Tutorial 4
//
//  Created by Marwan Harb on 8/31/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "UIScrollViewsTut.h"

@interface UIScrollViewsTut ()

@end

@implementation UIScrollViewsTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated {
	[self.scrollViewTuto setContentSize:CGSizeMake(0, 1000)];
}

@end
