//
//  ViewController.m
//  Segues
//
//  Created by Profesor on 30/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"
#import "PrincipalViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([_userTxt.text isEqualToString:@"pepe"] && [_passTxt.text isEqualToString:@"123"]) {
        return YES;
    }
    //NSLog(@"Usuario o contraseña incorrecta");
    UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Usuario o contraseña incorrecta" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [alerta show];
    return NO;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //PrincipalViewController * principal = [segue destinationViewController];
    
    PrincipalViewController * principal = [[segue.destinationViewController viewControllers] objectAtIndex:0];
    
    principal.dataTransfer = _userTxt.text;
    principal.delegate = self;
}
-(void)exitUserWithMessage:(NSString *)message{
    
    _resultTxt.text = message;
}

@end
