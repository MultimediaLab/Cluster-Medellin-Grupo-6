#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageCover;
@property (strong, nonatomic) IBOutlet UILabel *labelTime;
@property (strong, nonatomic) IBOutlet UIProgressView *progressBar;

- (IBAction)prevSong:(id)sender;
- (IBAction)playButton:(id)sender;
- (IBAction)stopButton:(id)sender;
- (IBAction)pauseButton:(id)sender;
- (IBAction)nextSong:(id)sender;

- (IBAction)enableOptions:(id)sender;
- (IBAction)changeVolume:(id)sender;
- (IBAction)changeVelocity:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *containerOptions;
@property AVAudioPlayer * reproductor;

@end

