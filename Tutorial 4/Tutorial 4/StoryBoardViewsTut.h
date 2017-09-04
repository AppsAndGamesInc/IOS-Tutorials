//
//  StoryBoardViewsTut.h
//  Tutorial 4
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryBoardViewsTut : UIViewController {
	
	NSTimer *indicatorTimer;
}
@property (strong, nonatomic) IBOutlet UIWebView *webViewtut;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
