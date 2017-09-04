//
//  DisplayImageTut.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "DisplayImageTut.h"

@interface DisplayImageTut ()

@end

@implementation DisplayImageTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showImageAction:(id)sender {
	self.rickImageView.image = [UIImage imageNamed:@"Dog.png"];


}
@end
