//
//  TempCalculator.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "TempCalculator.h"

@interface TempCalculator ()

@end

@implementation TempCalculator

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	self.tempField.text = @"";
	self.outputLabel.text = @"0 Celsius";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tempSegmentAction:(id)sender {
	if (self.tempSegmentControl.selectedSegmentIndex == 0) {
		self.enterLabel.text = @"Enter Fahrenheit";
		self.tempField.text = @"";
		self.outputLabel.text = @"0 Celsius";
	} else {
		self.enterLabel.text = @"Enter Celsius";
		self.tempField.text = @"";
		self.outputLabel.text = @"0 Fahrenheit";
	}
}

- (IBAction)calculateThem:(id)sender {
	[self resignFirstResponder];
	if (self.tempSegmentControl.selectedSegmentIndex == 0) {
		double fahrenheit = [self.tempField.text doubleValue];
		double celsius = (fahrenheit - 32)/1.8;
		self.outputLabel.text = [NSString stringWithFormat:@"%4.1f Celsius" , celsius];
		
		if (celsius > 120) {
			self.tempImage.image = [UIImage imageNamed:@"Temp9.png"];
		} else if (celsius > 100) {
			self.tempImage.image = [UIImage imageNamed:@"Temp8.png"];
		} else if (celsius > 80) {
			self.tempImage.image = [UIImage imageNamed:@"Temp7.png"];
		} else if (celsius > 60) {
			self.tempImage.image = [UIImage imageNamed:@"Temp6.png"];
		} else if (celsius > 40) {
			self.tempImage.image = [UIImage imageNamed:@"Temp5.png"];
		} else if (celsius > 20) {
			self.tempImage.image = [UIImage imageNamed:@"Temp4.png"];
		} else if (celsius > 0) {
			self.tempImage.image = [UIImage imageNamed:@"Temp3.png"];
		} else if (celsius > -20) {
			self.tempImage.image = [UIImage imageNamed:@"Temp2.png"];
		} else if (celsius < -20) {
			self.tempImage.image = [UIImage imageNamed:@"Temp1.png"];
		}
		
		
	} else {
		double celsius = [self.tempField.text doubleValue];
		double fahrenheit = celsius * 1.8 + 32;
		self.outputLabel.text = [NSString stringWithFormat:@"%4.1f Fahrenheit" , fahrenheit];
		
		if (fahrenheit > 160) {
			self.tempImage.image = [UIImage imageNamed:@"Temp9.png"];
		} else if (fahrenheit > 140) {
			self.tempImage.image = [UIImage imageNamed:@"Temp8.png"];
		} else if (fahrenheit > 120) {
			self.tempImage.image = [UIImage imageNamed:@"Temp7.png"];
		} else if (fahrenheit > 100) {
			self.tempImage.image = [UIImage imageNamed:@"Temp6.png"];
		} else if (fahrenheit > 80) {
			self.tempImage.image = [UIImage imageNamed:@"Temp5.png"];
		} else if (fahrenheit > 60) {
			self.tempImage.image = [UIImage imageNamed:@"Temp4.png"];
		} else if (fahrenheit > 40) {
			self.tempImage.image = [UIImage imageNamed:@"Temp3.png"];
		} else if (fahrenheit > 20) {
			self.tempImage.image = [UIImage imageNamed:@"Temp2.png"];
		} else if (fahrenheit < 20) {
			self.tempImage.image = [UIImage imageNamed:@"Temp1.png"];
		}
	}
}

@end
