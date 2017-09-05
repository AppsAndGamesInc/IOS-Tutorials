//
//  SteamVideoTut.h
//  Tutorial 6
//
//  Created by Marwan Harb on 9/5/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface SteamVideoTut : UIViewController
- (IBAction)StreamVideo:(id)sender;

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
