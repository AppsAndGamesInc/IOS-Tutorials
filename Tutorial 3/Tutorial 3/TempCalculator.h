//
//  TempCalculator.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempCalculator : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *enterLabel;
@property (strong, nonatomic) IBOutlet UITextField *tempField;
@property (strong, nonatomic) IBOutlet UIImageView *tempImage;
@property (strong, nonatomic) IBOutlet UILabel *outputLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *tempSegmentControl;

- (IBAction)calculateTemp:(id)sender;
- (IBAction)tempSegmentAction:(id)sender;

@end
