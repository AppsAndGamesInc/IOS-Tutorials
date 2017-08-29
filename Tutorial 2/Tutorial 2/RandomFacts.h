//
//  RandomFacts.h
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomFacts : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *factsLabel;
- (IBAction)factsButton:(id)sender;

@end
