
//
//  SegmentedControlsTut.m
//  Tutorial 3
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SegmentedControlsTut.h"

@interface SegmentedControlsTut ()

@end

@implementation SegmentedControlsTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segmentAction:(id)sender {
	if (self.segmentControl.selectedSegmentIndex == 0) {
		self.segmentLabel1.text = @"First One";
	} else if (self.segmentControl.selectedSegmentIndex == 1) {
		self.segmentLabel1.text = @"Second One";
	} else if (self.segmentControl.selectedSegmentIndex == 2) {
		self.segmentLabel1.text = @"Third One";
	} else if (self.segmentControl.selectedSegmentIndex == 3) {
		self.segmentLabel1.text = @"Fourth One";
	}
	
}
@end
