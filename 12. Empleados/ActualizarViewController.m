//
//  ActualizarViewController.m
//  Empleados
//
//  Created by Profesor on 11/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ActualizarViewController.h"

@interface ActualizarViewController ()

@end

@implementation ActualizarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    updateEmploy = [[Empleados alloc] init];
    _updateButton.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)searchEmployed:(id)sender{
    updateEmploy.empCedula = _textSearch.text;
    [updateEmploy searchEmployedInDatabase];
    alerta = [[UIAlertView alloc] initWithTitle:@"Mensaje" message:updateEmploy.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [alerta show];
    _nameText.text = updateEmploy.empName;
    _jobText.text = updateEmploy.empJob;
    _phoneText.text = updateEmploy.empPhone;
    _adressText.text = updateEmploy.empAdress;
    
    if (updateEmploy.empId) {
        _updateButton.enabled = YES;
    }else{
        _updateButton.enabled = NO;
    }
}
- (IBAction)updateEmployed:(id)sender{
    updateEmploy.empName = _nameText.text;
    updateEmploy.empJob = _jobText.text;
    updateEmploy.empPhone = _phoneText.text;
    updateEmploy.empAdress = _adressText.text;
    [updateEmploy updateEmployedInDatabase];
    alerta = [[UIAlertView alloc] initWithTitle:@"Mensaje" message:updateEmploy.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [alerta show];
}
@end
