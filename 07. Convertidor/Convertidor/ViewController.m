//
//  ViewController.m
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    usuario = [[User alloc] init];
    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    usuario.name = _userName.text;
    usuario.pass = _userPass.text;
    
    if ([usuario isUserAutorizate]) {
        return YES;
    }else{
        alerta = [[UIAlertView alloc]initWithTitle:@"error" message:@"contraseña incorrecta" delegate:self cancelButtonTitle:@"aceptar" otherButtonTitles:@"cerrar", nil];
    

        [alerta show];
        return NO;
    
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
        _userName.text=nil;
        _userPass.text=nil;
    }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ConverterViewController * convert = [segue destinationViewController];
    convert.data = _userName.text;

}


@end
