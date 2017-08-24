//
//  ViewController.m
//  Tutorial 1
//
//  Created by Marwan Harb on 8/24/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	

	NSArray *array = @[@"Apple", @"Banana",@"Melon"];
	NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple",@"BAnana",@"Melon", nil];
	[array2 addObject:@"Njasa"];
	[array2 insertObject:@"Strawberry" atIndex:3];
	
	NSLog(@"%@", array2);
	NSLog(@"%lu" , array2.count);
	
	[array2 removeObjectAtIndex:2];
	NSLog(@"%@", array2);
	NSLog(@"%lu" , array2.count);
	
	
	int int1 = 23;
	double double1 = 10.5;
	

	self.label1.text = array2[3];
	self.label2.text = [NSString stringWithFormat:@"%d %.2f", int1 , double1];
	self.label3.text = array[1];
	self.button.enabled = NO;
	self.switches.on = NO;
	
	
	
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
