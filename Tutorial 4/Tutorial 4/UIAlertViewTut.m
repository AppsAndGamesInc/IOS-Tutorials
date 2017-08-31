//
//  UIAlertViewTut.m
//  Tutorial 4
//
//  Created by Marwan Harb on 8/31/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "UIAlertViewTut.h"

@interface UIAlertViewTut ()

@end

@implementation UIAlertViewTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alertViewButton:(id)sender {
	
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"There is an Error" preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *Button1 = [UIAlertAction actionWithTitle:@"Button" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		[alert dismissViewControllerAnimated:YES completion:nil];
		self.alertViewLabel.text = @"Hello";
		}];
	UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
		[alert dismissViewControllerAnimated:YES completion:nil];
		}];
	
	
	[alert addAction:Button1];
	[alert addAction:cancel];
	[self presentViewController:alert animated:YES completion:nil];
}


@end
