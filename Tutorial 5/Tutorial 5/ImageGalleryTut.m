//
//  ImageGalleryTut.m
//  Tutorial 5
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "ImageGalleryTut.h"

@interface ImageGalleryTut ()

@end

@implementation ImageGalleryTut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	imageInt = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)nextAction:(id)sender {
		imageInt += 1;
		self.galleryCount.text = [NSString stringWithFormat:@"%i/6", imageInt];
	[self imageGallery];


	
}

- (IBAction)backAction:(id)sender {
		imageInt -= 1;
		self.galleryCount.text = [NSString stringWithFormat:@"%i/6", imageInt];
	[self imageGallery];
	
}

-(void)imageGallery {
	NSString *image = [NSString stringWithFormat:@"Image%i.jpg", imageInt];
	self.ImageGalleryView.image = [UIImage imageNamed:image];


	if (imageInt == 0) {
		self.backButton.enabled = NO;
	} else if(imageInt == 6) {
		self.nextButton.enabled = NO;
	} else {
		self.nextButton.enabled = YES;
		self.backButton.enabled = YES;
	}
}
@end
