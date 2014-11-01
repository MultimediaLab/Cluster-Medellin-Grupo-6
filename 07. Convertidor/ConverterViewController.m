//
//  ConverterViewController.m
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ConverterViewController.h"

@implementation ConverterViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    _hello.text = [NSString stringWithFormat:@"Hola, %@", _data];
    converter = [[Converter alloc] init];
    _slider.minimumValue = 1900;
    _slider.maximumValue = 2100;

}

- (IBAction)coverDolar:(id)sender {
    
    _result.text = [converter convertDolar:_dolars.text inpesos:((UISlider*)sender).value];
}


-(void)configDataSlider:(float)minValue and:(float)maxValue{
    _slider.minimumValue=minValue;
    _slider.maximumValue=maxValue;
    
    _slider.value = (maxValue + minValue)/2;
    _currentTxt.text=[NSString stringWithFormat:@"%.f", _slider.value];
    _minTxt.text=[NSString stringWithFormat:@"%.f",minValue ];
    _maxTxt.text=[NSString stringWithFormat:@"%.f",maxValue];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ConfigViewController * config= [segue destinationViewController];
    config.delegate=self;

}


- (IBAction)exit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
