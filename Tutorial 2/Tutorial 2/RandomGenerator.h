//
//  RandomGenerator.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomGenerator : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *randomNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *randomWordLabel;
- (IBAction)randomNumberButton:(id)sender;
- (IBAction)randomWordButton:(id)sender;

@end
