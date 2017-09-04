//
//  ImageFromURL.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ImageFromURL.h"

@interface ImageFromURL ()

@end

@implementation ImageFromURL

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.imageFromURL.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://media2.intoday.in/indiatoday/images/stories//2016February/jerboa_mos_022416051802.jpg"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
