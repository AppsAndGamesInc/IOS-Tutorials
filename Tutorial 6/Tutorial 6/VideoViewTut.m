//
//  VideoViewTut.m
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "VideoViewTut.h"

@interface VideoViewTut ()

@end

@implementation VideoViewTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playVideo:(id)sender {
	NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Video" withExtension:@"mp4"];
	AVPlayer *player = [AVPlayer playerWithURL:videoURL];
	AVPlayerViewController *videoController = [[AVPlayerViewController alloc] init];
	videoController.player = player;
	[player play];
	[self presentViewController:videoController animated:YES completion:nil];
}
@end
