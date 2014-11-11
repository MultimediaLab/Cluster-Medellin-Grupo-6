//
//  BuscarViewController.m
//  Empleados
//
//  Created by Profesor on 8/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "BuscarViewController.h"

@interface BuscarViewController ()

@end

@implementation BuscarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)serchEmployed:(id)sender {
    Empleados * searchEmploy = [[Empleados alloc] init];
    searchEmploy.empCedula = _cedulaSearch.text;
    [searchEmploy searchEmployedInDatabase];
    _nameTxt.text = searchEmploy.empName;
    _jobTxt.text = searchEmploy.empJob;
    _phoneTxt.text = searchEmploy.empPhone;
    _adressTxt.text = searchEmploy.empAdress;
    mensaje = [[UIAlertView alloc] initWithTitle:@"mensaje" message:searchEmploy.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [mensaje show];

}
@end
