//
//  UISlidersTut.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISlidersTut : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *sliderLabel;
@property (strong, nonatomic) IBOutlet UISlider *Slider;

- (IBAction)fontSize:(id)sender;

@end
