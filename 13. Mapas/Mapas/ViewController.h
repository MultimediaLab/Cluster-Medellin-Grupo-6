#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>
{
    CLLocationManager * locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *worldView;
- (IBAction)changeMap:(id)sender;
@end

