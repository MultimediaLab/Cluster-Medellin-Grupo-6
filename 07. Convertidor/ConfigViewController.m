//
//  ConfigViewController.m
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ConfigViewController.h"

@implementation ConfigViewController

- (IBAction)saveButton:(id)sender {
    
    if ([_minTxt.text floatValue]>=[_maxTxt.text floatValue]) {
        UIAlertView *alerta = [[[UIAlertView alloc] init]initWithTitle:@"Error" message:@"el valor min debe ser menor que el max" delegate:nil cancelButtonTitle:@"aceptar" otherButtonTitles:nil];
        [alerta show];
    }else {
        [_delegate configDataSlider:[_minTxt.text floatValue] and:[_maxTxt.text floatValue]];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    }
  
@end
