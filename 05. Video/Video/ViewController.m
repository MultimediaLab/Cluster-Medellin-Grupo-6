
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"BigBuckBunny_320x180" ofType:@"mp4"];
    
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    _reproductor = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    _reproductor.view.frame = CGRectMake(0, 0, _viewVideo.frame.size.width, _viewVideo.frame.size.height);
    
    [_viewVideo addSubview:_reproductor.view];
    [_reproductor play];
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
     _reproductor.view.frame = CGRectMake(0, 0, _viewVideo.frame.size.width, _viewVideo.frame.size.height);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
