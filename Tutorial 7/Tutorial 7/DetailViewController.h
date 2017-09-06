
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController {
    
    double latitude;
    double longitude;
    
    
}

@property (strong, nonatomic) NSArray *detailModal;

@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
@property (strong, nonatomic) IBOutlet UILabel *detailTitle;
@property (strong, nonatomic) IBOutlet UILabel *detailDescription;
@property (strong, nonatomic) IBOutlet UITextView *detailTextView;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UIButton *directionsButton;


- (IBAction)directions:(id)sender;




@end
