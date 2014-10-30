//
//  ViewController.m
//  ReproductorAudio
//
//  Created by Profesor on 25/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"
#import "Song.h"

@interface ViewController ()
{
    int i;

}

@property NSTimer * progressTimer;
@property NSArray * canciones;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Song * cancion1 = [[Song alloc] init];
    cancion1.audioName = @"musica";
    cancion1.imageFile = @"imagen.jpg";
    
    Song * cancion2 = [[Song alloc] init];
    cancion2.audioName = @"audio2";
    cancion2.imageFile = @"colorful4.jpg";
    
    _canciones = @[cancion1, cancion2];
    //https://peach.blender.org/
    [self loadSong:[_canciones objectAtIndex:0]];
    _containerOptions.hidden = NO;
    
}
-(NSString*) convertTime : (float)time{
    int minutos = (int)(time/60 ) % 60;
    int segundos = (int)time % 60;
    
    return [NSString stringWithFormat:@"%02i:%02i", minutos, segundos];
}
-(void)loadSong:(Song*)song{
    _imageCover.image = [UIImage imageNamed:song.imageFile];
    NSError * error;
    NSString * ruta = [[NSBundle mainBundle] pathForResource:song.audioName ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    _reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    _reproductor.volume = 1;
    _reproductor.pan = 0.5;
    _reproductor.rate = 1;
    _reproductor.enableRate = YES;
    _reproductor.numberOfLoops = -1;
    _reproductor.delegate = self;
    [_reproductor prepareToPlay];
}

-(void)updateProgressBar{
    _labelTime.text = [self convertTime:_reproductor.currentTime];
    _progressBar.progress = _reproductor.currentTime / _reproductor.duration;

}
- (IBAction)playButton:(id)sender {
    [_reproductor play];
    _progressTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateProgressBar) userInfo:nil repeats:YES];
}
- (IBAction)stopButton:(id)sender {
    _reproductor.currentTime = 0;
    [_reproductor stop];
    _progressBar.progress = 0;
    [_progressTimer invalidate];
}
- (IBAction)enableOptions:(id)sender {
    _containerOptions.hidden = !((UISwitch *) sender).on;
}
- (IBAction)changeVolume:(id)sender {
    _reproductor.volume = ((UISlider*) sender).value;
}

- (IBAction)changeVelocity:(id)sender {
    _reproductor.rate = ((UISlider*) sender).value;
}

- (IBAction)prevSong:(id)sender {
    [self loadSong:[_canciones objectAtIndex:0]];
    [_reproductor play];
}

- (IBAction)pauseButton:(id)sender {
    [_reproductor pause];
    
}
- (IBAction)nextSong:(id)sender {
    [self loadSong:[_canciones objectAtIndex:1]];
    [_reproductor play];

}




@end
