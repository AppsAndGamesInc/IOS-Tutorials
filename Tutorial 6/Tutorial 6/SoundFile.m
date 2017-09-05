//
//  SoundFile.m
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "SoundFile.h"

@interface SoundFile ()

@end

@implementation SoundFile

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sound" ofType:@"wav"]];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playMe:(id)sender {

	AudioServicesPlaySystemSound(soundID);
}
@end
