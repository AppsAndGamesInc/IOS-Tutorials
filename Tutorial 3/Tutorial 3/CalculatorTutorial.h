//
//  CalculatorTutorial.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorTutorial : UIViewController {
	int CurrentOperation;
	float result;
	float currentNumber;
}

@property (strong, nonatomic) IBOutlet UILabel *calculatorLabel;

- (IBAction)digitPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)cancelAll:(id)sender;

@end
