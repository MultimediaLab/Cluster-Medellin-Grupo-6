
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>



//Tap Gesture
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
- (IBAction)handleTap:(id)sender;


//Pan Gesture
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGesture;
- (IBAction)handlePan:(id)sender;


//Pinch Gesture
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *pinchGesture;
- (IBAction)handlePinch:(id)sender;

//Rotation Gesture
@property (strong, nonatomic) IBOutlet UIRotationGestureRecognizer *rotationGesture;
- (IBAction)handleRotation:(id)sender;



@property (strong, nonatomic) IBOutlet UIImageView *pig;

@property AVAudioPlayer * coinSound;
@property AVAudioPlayer * pigSound;


@end

