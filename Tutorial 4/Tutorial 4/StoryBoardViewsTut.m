//
//  StoryBoardViewsTut.m
//  Tutorial 4
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "StoryBoardViewsTut.h"

@interface StoryBoardViewsTut ()

@end

@implementation StoryBoardViewsTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	[self.webViewtut loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.apple.com"]]];
	indicatorTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loadWeb) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadWeb {
	if (!self.webViewtut.loading) {
		[self.activityIndicator stopAnimating];
	} else {
		[self.activityIndicator startAnimating];
	}
}


@end
