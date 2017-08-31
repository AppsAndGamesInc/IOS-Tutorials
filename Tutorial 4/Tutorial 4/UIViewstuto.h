//
//  UIViewstuto.h
//  Tutorial 4
//
//  Created by Marwan Harb on 8/31/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewstuto : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *uiViewTutLabel1;
@property (strong, nonatomic) IBOutlet UIButton *uiViewTutLabel2;

@property (strong, nonatomic) IBOutlet UIView *viewOne;
@property (strong, nonatomic) IBOutlet UIView *viewTwo;

- (IBAction)showViewAction:(id)sender;
- (IBAction)showViewAction2:(id)sender;

- (IBAction)dismissViewOne:(id)sender;
- (IBAction)dismissView2:(id)sender;
@end
