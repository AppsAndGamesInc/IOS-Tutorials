//
//  SwipeTutorial.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SwipeTutorial.h"

@interface SwipeTutorial ()

@end

@implementation SwipeTutorial

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];

	self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
	self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
	self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
	self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
	
	[self.view addGestureRecognizer:self.leftSwipe];
	[self.view addGestureRecognizer:self.rightSwipe];
	[self.view addGestureRecognizer:self.upSwipe];
	[self.view addGestureRecognizer:self.downSwipe];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)handleSwipes:(UISwipeGestureRecognizer *)sender{

	if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
		self.swipingLabel.text = @"Left";
	}
	if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
		self.swipingLabel.text = @"Right";
	}
	if (sender.direction == UISwipeGestureRecognizerDirectionUp) {
		self.swipingLabel.text = @"Up";
	}
	if (sender.direction == UISwipeGestureRecognizerDirectionDown){
		self.swipingLabel.text = @"Down";
	}
	
}

@end
