//
//  AlertasViewController.m
//  Segues
//
//  Created by Profesor on 30/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "AlertasViewController.h"

@interface AlertasViewController ()

@end

@implementation AlertasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)alertaSimple:(id)sender {
    alerta = [[UIAlertView alloc] initWithTitle:@"Alerta Simple" message:@"Cuerpo del mensaje" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar", @"Omitir", nil];
    [alerta show];
}
- (IBAction)alertaText:(id)sender {
    alerta = [[UIAlertView alloc] initWithTitle:@"Alerta Text Field" message:@"Cuerpo del mensaje" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar", nil];
    alerta.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alerta show];
}
- (IBAction)alertaPassword:(id)sender {
    alerta = [[UIAlertView alloc] initWithTitle:@"Alerta Text Field" message:@"Cuerpo del mensaje" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar", nil];
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alerta show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Aceptar");
            NSLog(@"User: %@", [alertView textFieldAtIndex:0].text);
            NSLog(@"Pass: %@", [alertView textFieldAtIndex:1].text);
            break;
        case 1:
            NSLog(@"Cancelar");
            break;
        case 2:
            NSLog(@"Omitir");
            break;
    }
}





- (IBAction)menuOpciones:(id)sender {
    
    opciones = [[UIActionSheet alloc] initWithTitle:@"Opciones" delegate:self cancelButtonTitle:@"Aceptar" destructiveButtonTitle:@"Eliminar" otherButtonTitles:@"Cancelar", @"Omitir", @"Enviar", nil];
    [opciones showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Eliminar");
            break;
        case 1:
            NSLog(@"Cancelar");
            break;
        case 2:
            NSLog(@"Omitir");
            break;
        case 3:
            NSLog(@"Enviar");
            break;
        case 4:
            NSLog(@"Aceptar");
            break;
            
       
    }

}
@end
