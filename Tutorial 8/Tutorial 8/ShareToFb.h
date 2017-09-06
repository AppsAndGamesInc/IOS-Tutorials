//
//  ShareToFb.h
//  Tutorial 8
//
//  Created by Marwan Harb on 9/6/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>


@interface ShareToFb : UIViewController <MFMessageComposeViewControllerDelegate , MFMailComposeViewControllerDelegate> {
	SLComposeViewController *slComposer;
	
}
@property (strong, nonatomic) IBOutlet UILabel *shareLabel;
@property (strong, nonatomic) IBOutlet UIImageView *shareImage;

- (IBAction)postToFacebook:(id)sender;
- (IBAction)postToTwitter:(id)sender;
- (IBAction)sendMessage:(id)sender;
- (IBAction)sendEmail:(id)sender;

@end
