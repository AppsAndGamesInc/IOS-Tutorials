//
//  PDFTut.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "PDFTut.h"

@interface PDFTut ()

@end

@implementation PDFTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	NSString *path = [[NSBundle mainBundle] pathForResource:@"idm" ofType:@"pdf"];
	NSURL *URL = [NSURL fileURLWithPath:path];
	NSURLRequest *request = [NSURLRequest requestWithURL:URL];
	[self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
