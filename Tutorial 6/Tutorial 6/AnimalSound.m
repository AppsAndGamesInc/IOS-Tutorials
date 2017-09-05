//
//  AnimalSound.m
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "AnimalSound.h"

@interface AnimalSound ()

@end

@implementation AnimalSound

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
	NSURL *soundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
	NSURL *soundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
	NSURL *soundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
	NSURL *soundURL5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
	NSURL *soundURL6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
	
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL1, &soundID1);
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL2, &soundID2);
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL3, &soundID3);
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL4, &soundID4);
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL5, &soundID5);
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL6, &soundID6);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)frogSound:(id)sender {
	AudioServicesPlaySystemSound(soundID5);
}

- (IBAction)catSound:(id)sender {
	AudioServicesPlaySystemSound(soundID1);
}

- (IBAction)dogSound:(id)sender {
	AudioServicesPlaySystemSound(soundID2);
}

- (IBAction)horseSound:(id)sender {
	AudioServicesPlaySystemSound(soundID6);
}

- (IBAction)sheepSound:(id)sender {
	AudioServicesPlaySystemSound(soundID4);
}

- (IBAction)pigSound:(id)sender {
	AudioServicesPlaySystemSound(soundID3);
}
@end
