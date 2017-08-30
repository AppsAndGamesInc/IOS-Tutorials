//
//  CalculatorTutorial.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "CalculatorTutorial.h"

@interface CalculatorTutorial ()

@end

@implementation CalculatorTutorial

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)digitPressed:(id)sender {
	currentNumber = currentNumber * 10 + (float)[sender tag];
	self.calculatorLabel.text = [NSString stringWithFormat:@"%2.0f", currentNumber];
}

- (IBAction)operationPressed:(id)sender {
	if (CurrentOperation == 0)  {
	result = currentNumber;
		
	} else {
		switch (CurrentOperation) {
			case 1:
    result = result + currentNumber;
    break;
			case 2:
    result = result - currentNumber;
    break;
			case 3:
    result = result * currentNumber;
    break;
			case 4:
    result = result / currentNumber;
    break;
				
			default:
    break;
		}
	}
	currentNumber = 0;
	self.calculatorLabel.text = [NSString stringWithFormat:@"%2.0f", result];
	if ([sender tag] == 0) result =0; {
		CurrentOperation = (int)[sender tag];
	}
}

- (IBAction)cancelAll:(id)sender {
	currentNumber = 0;
	self.calculatorLabel.text = @"0";
}
@end
