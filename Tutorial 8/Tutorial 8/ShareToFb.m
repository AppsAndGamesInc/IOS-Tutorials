//
//  ShareToFb.m
//  Tutorial 8
//
//  Created by Marwan Harb on 9/6/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ShareToFb.h"

@interface ShareToFb ()

@end

@implementation ShareToFb

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)postToFacebook:(id)sender {
	slComposer = [[SLComposeViewController alloc] init];
	slComposer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
	[slComposer setInitialText:[NSString stringWithFormat:@"%@", self.shareLabel.text]];
	[slComposer addImage:self.shareImage.image];
	[self presentViewController:slComposer animated:YES completion:nil];

}

- (IBAction)postToTwitter:(id)sender {
	slComposer = [[SLComposeViewController alloc] init];
	slComposer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
	[slComposer setInitialText:[NSString stringWithFormat:@"%@", self.shareLabel.text]];
	[slComposer addImage:self.shareImage.image];
	[self presentViewController:slComposer animated:YES completion:nil];
}

- (IBAction)sendMessage:(id)sender {
	MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc] init];
	[textComposer setMessageComposeDelegate:self];
	if ([MFMessageComposeViewController canSendText]) {
		[textComposer setRecipients:NULL];
		[textComposer setBody:[NSString stringWithFormat:@"%@", self.shareLabel.text]];
		NSData *data = UIImageJPEGRepresentation(self.shareImage.image, 1);
		[textComposer addAttachmentData:data typeIdentifier:@"image/jpeg" filename:@"image.jpeg"];
		
	} else {
		NSLog(@"cant send message");
	}
}

- (IBAction)sendEmail:(id)sender {
	MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
	[mailComposer setMailComposeDelegate:self];
	if ([MFMailComposeViewController canSendMail]) {
		[mailComposer setToRecipients:NULL];
		[mailComposer setSubject:@"Check out this awesome app"];
		[mailComposer setMessageBody:[NSString stringWithFormat:@"%@" , self.shareLabel.text] isHTML:NO];
		NSData *data = UIImageJPEGRepresentation(self.shareImage.image, 1);
		[mailComposer addAttachmentData:data mimeType:@"image/jpeg" fileName:@"image.jpeg"];
		[self presentViewController:mailComposer animated:YES completion:nil];
	} else {
		NSLog(@"Cant send Email");
	}

}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
	[self dismissViewControllerAnimated:YES completion:nil];
	switch (result) {
		case MFMailComposeResultFailed:
			NSLog(@"Email Failed");
			break;
		case MFMailComposeResultCancelled:
			NSLog(@"Email Cancelled");
			break;
		case MFMailComposeResultSaved:
			NSLog(@"Email Saved");
			break;
		case MFMailComposeResultSent:
			NSLog(@"Email Sent");
			break;
			
  default:
			break;
	}
	
}



-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
	[self dismissViewControllerAnimated:YES completion:nil];
	switch (result) {
	case MessageComposeResultFailed:
			NSLog(@"Message failed");
			break;
	case MessageComposeResultSent:
			NSLog(@"Message Sent");
			break;
	case MessageComposeResultCancelled:
			NSLog(@"Message Cancelled");
			break;
  default:
			break;
	}
}


@end
