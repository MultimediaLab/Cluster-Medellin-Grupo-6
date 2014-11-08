//
//  AdicionarViewController.m
//  Empleados
//
//  Created by Profesor on 8/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "AdicionarViewController.h"

@interface AdicionarViewController ()

@end

@implementation AdicionarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveEmployed:(id)sender {
    Empleados * newEmployed = [[Empleados alloc] init];
    newEmployed.empName = _nameTxt.text;
    newEmployed.empCedula = _cedulaTxt.text;
    newEmployed.empJob = _jobTxt.text;
    newEmployed.empPhone = _phoneTxt.text;
    newEmployed.empAdress = _adressTxt.text;

    [newEmployed insertEmployedInDatase];
    
    mensaje = [[UIAlertView alloc] initWithTitle:@"Alerta" message:newEmployed.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];

    [mensaje show];
    
}
@end
