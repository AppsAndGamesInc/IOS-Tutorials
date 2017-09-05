//
//  SteamVideoTut.m
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SteamVideoTut.h"

@interface SteamVideoTut ()

@end

@implementation SteamVideoTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	NSString *EmbededCode = @"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jIhPM4Gd1Mg\" frameborder=\"0\" allowfullscreen></iframe>";
	[[self webView] loadHTMLString:EmbededCode baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)StreamVideo:(id)sender {


}
@end
