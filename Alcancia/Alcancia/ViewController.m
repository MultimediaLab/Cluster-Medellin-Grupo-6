#import "ViewController.h"

@implementation ViewController

-(AVAudioPlayer*)loadAudio:(NSString*)ruta{
    NSURL * url = [[NSBundle mainBundle] URLForResource:ruta withExtension:@"wav"];
    NSError * error;
    AVAudioPlayer * player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    if (!player) {
        NSLog(@"Error : %@", error);
    }else {
        [player prepareToPlay];
    }
    return player;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _coinSound = [self loadAudio:@"Moneda"];
    [self.view addGestureRecognizer:_tapGesture];
}

- (IBAction)handleTap:(id)sender {
    [_coinSound play];
    UIImageView * coinView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Native American obv.png"]];
    UITapGestureRecognizer * gesto = sender;
    CGPoint puntoTouch = [gesto locationOfTouch:0 inView:gesto.view];
    coinView.center = puntoTouch;
    coinView.userInteractionEnabled = YES;
    [coinView addGestureRecognizer:_panGesture];
    [coinView addGestureRecognizer:_pinchGesture];
    [coinView addGestureRecognizer:_rotationGesture];
    
    [self.view addSubview:coinView];
}
- (IBAction)handlePan:(id)sender {
    UIPanGestureRecognizer * pan = sender;
    CGPoint translation = [pan translationInView:self.view];
    pan.view.center = CGPointMake(pan.view.center.x + translation.x, pan.view.center.y + translation.y);
    [pan setTranslation:CGPointMake(0, 0) inView:self.view];
    
    if (pan.view.center.x > _pig.frame.origin.x && pan.view.center.y > _pig.frame.origin.y ) {
        pan.view.hidden = YES;
    }
}
- (IBAction)handlePinch:(id)sender {
    UIPinchGestureRecognizer * pinch = sender;
    pinch.view.transform = CGAffineTransformScale(pinch.view.transform, pinch.scale, pinch.scale);
    pinch.scale = 1;
    
}
- (IBAction)handleRotation:(id)sender {
    UIRotationGestureRecognizer * rotate = sender;
    rotate.view.transform = CGAffineTransformRotate(rotate.view.transform, rotate.rotation);
    rotate.rotation = 0;
}

@end
