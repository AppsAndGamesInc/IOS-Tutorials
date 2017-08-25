//
//  ViewController.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}



- (IBAction)setColor:(id)sender {
	self.label2.textColor = [UIColor yellowColor];
}

- (IBAction)setBackground:(id)sender {
	self.label2.backgroundColor = [UIColor blackColor];
}

- (IBAction)fontSize:(id)sender {
	[self.label2 setFont:[UIFont fontWithName:@"Arial" size: 37]];
}

- (IBAction)setShadow:(id)sender {
	self.label2.layer.shadowColor = [UIColor blueColor].CGColor;
	self.label2.layer.shadowOpacity = 0.5;
	self.label2.layer.shadowRadius = 1.0f;
	self.label2.layer.shadowOffset = CGSizeMake(4, 4);
}

- (IBAction)shadowColor:(id)sender {
	self.label2.layer.shadowColor = [[UIColor yellowColor] CGColor];

}

- (IBAction)left:(id)sender {
	self.label2.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)mid:(id)sender {
	self.label2.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)right:(id)sender {
	self.label2.textAlignment = NSTextAlignmentRight;
}

- (IBAction)changeFont:(id)sender {
	[self.label2 setFont:[UIFont fontWithName:@"Stardust-Adventure" size: 30]];

}

- (IBAction)chageText:(id)sender {
	self.label.text = @"Hello Michel";
	self.textView.text = self.textField.text;
	
	[self resignFirstResponder];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
	if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
		return YES;
	}
	[textView resignFirstResponder];
	return NO;
}

- (IBAction)startTimer:(id)sender {
	countInt = 0;
	self.label2.text = [NSString stringWithFormat:@"%i" , countInt];
	[timer invalidate];
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
	
}

- (IBAction)stopTimer:(id)sender {
	[timer invalidate];
}

-(void)updateTimer {

	countInt += 1;
	self.label2.text = [NSString stringWithFormat:@"%i" , countInt];
	
}





@end
