//
//  ViewController.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/25/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate> {
	NSTimer *timer;
	int countInt;
	
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UITextField *textField;


@property (strong, nonatomic) IBOutlet UILabel *label2;
- (IBAction)setColor:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)fontSize:(id)sender;
- (IBAction)setShadow:(id)sender;
- (IBAction)shadowColor:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)mid:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)changeFont:(id)sender;


- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;

- (IBAction)chageText:(id)sender;


@end

