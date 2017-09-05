//
//  AnimalSound.h
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AnimalSound : UIViewController{
	SystemSoundID soundID1;
	SystemSoundID soundID2;
	SystemSoundID soundID3;
	SystemSoundID soundID4;
	SystemSoundID soundID5;
	SystemSoundID soundID6;
	
	
}
- (IBAction)frogSound:(id)sender;
- (IBAction)catSound:(id)sender;
- (IBAction)dogSound:(id)sender;
- (IBAction)horseSound:(id)sender;
- (IBAction)sheepSound:(id)sender;
- (IBAction)pigSound:(id)sender;

@end
