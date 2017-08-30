//
//  SwipeTutorial.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/30/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeTutorial : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *swipingLabel;

@property(nonatomic, strong) UISwipeGestureRecognizer *leftSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *rightSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *upSwipe;
@property(nonatomic, strong) UISwipeGestureRecognizer *downSwipe;


@end
