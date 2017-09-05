 //
//  SoundFile.h
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface SoundFile : UIViewController{
	
	SystemSoundID soundID;
}

- (IBAction)playMe:(id)sender;

@end
