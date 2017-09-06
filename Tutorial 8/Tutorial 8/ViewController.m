//
//  ViewController.m
//  Tutorial 8
//
//  Created by Marwan Harb on 9/6/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (IBAction)phoneCall:(id)sender {

	NSString *phoneCallString = [NSString stringWithFormat:@"tel:1122334455"];
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneCallString] options:@{} completionHandler:nil];
	
}
@end
