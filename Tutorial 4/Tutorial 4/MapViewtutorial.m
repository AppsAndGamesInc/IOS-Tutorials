//
//  MapViewtutorial.m
//  Tutorial 4
//
//  Created by Marwan Harb on 9/4/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "MapViewtutorial.h"

@interface MapViewtutorial ()

@end

@implementation MapViewtutorial

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	self.mapView.delegate = self;
	locationManager.delegate = self;
	locationManager = [[CLLocationManager alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mapSegmentAction:(id)sender {
	if (self.mapSegmentControl.selectedSegmentIndex == 0) {
		self.mapView.mapType = MKMapTypeStandard;
	} else if (self.mapSegmentControl.selectedSegmentIndex == 1) {
		self.mapView.mapType = MKMapTypeSatellite;
	} else if (self.mapSegmentControl.selectedSegmentIndex == 2) {
		self.mapView.mapType = MKMapTypeHybrid;
	}



}

- (IBAction)locateMe:(id)sender {
	[locationManager requestWhenInUseAuthorization];
	[locationManager requestAlwaysAuthorization];
	
	[locationManager startUpdatingLocation];
	self.mapView.showsUserLocation = YES;
	

}
@end
