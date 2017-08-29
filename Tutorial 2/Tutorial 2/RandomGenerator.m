//
//  RandomGenerator.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "RandomGenerator.h"

@interface RandomGenerator ()

@end

@implementation RandomGenerator

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)randomNumberButton:(id)sender {
	int randomNum = arc4random() % 100;
	self.randomNumberLabel.text = [NSString stringWithFormat:@"%i", randomNum];
}

- (IBAction)randomWordButton:(id)sender {
	NSArray *words = @[@"Apple",@"Banana",@"Onion",@"Anthony",@"Strawberry",@"Lemon"];
	int randWord = arc4random() % words.count;
	self.randomWordLabel.text = words[randWord];
}
@end
