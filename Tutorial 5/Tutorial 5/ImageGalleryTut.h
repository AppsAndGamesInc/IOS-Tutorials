//
//  ImageGalleryTut.h
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageGalleryTut : UIViewController {
	int imageInt;
}


@property (strong, nonatomic) IBOutlet UIImageView *ImageGalleryView;

@property (strong, nonatomic) IBOutlet UIButton *nextButton;
@property (strong, nonatomic) IBOutlet UIButton *backButton;
@property (strong, nonatomic) IBOutlet UILabel *galleryCount;

- (IBAction)nextAction:(id)sender;
- (IBAction)backAction:(id)sender;

@end
