//
//  SegmentedControlsTut.h
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentedControlsTut : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *segmentLabel1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)segmentAction:(id)sender;


@end
