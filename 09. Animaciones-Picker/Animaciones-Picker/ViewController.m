//
//  ViewController.m
//  Animaciones-Picker
//
//  Created by Profesor on 4/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray * paises;
@property NSArray * departamentos;
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _departamentos = @[@"Antioquia",@"Cundinamarca", @"Valle", @"Amazonas", @"Risaralda", @"Cesar", @"Guaviare"];
    _pickerPaises.delegate = self;
    _pickerPaises.dataSource = self;
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"Paises" ofType:@"plist"];
    _paises = [[NSArray alloc] initWithContentsOfFile:ruta];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [_paises count];
    }
    return [_departamentos count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [_paises objectAtIndex:row];
    }
    return [_departamentos objectAtIndex:row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    UIAlertView * alerta;
    if (component == 0) {
        alerta = [[UIAlertView alloc] initWithTitle:@"Pais Seleccionado" message:[_paises objectAtIndex:row] delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    }else {
        alerta = [[UIAlertView alloc] initWithTitle:@"Pais Seleccionado" message:[_departamentos objectAtIndex:row] delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    }
    [alerta show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dateChange:(id)sender {
    UIDatePicker * control = sender;
    _textDate.text = [NSString stringWithFormat:@"%@", control.date];
}
- (IBAction)controlOption:(id)sender {
    UISwitch * control = sender;
    if (control.on) {
        [UIView animateWithDuration:1.0 animations:^{
            _containerView.frame = CGRectMake(_containerView.frame.origin.x, _containerView.frame.origin.y, _containerView.frame.size.width, 176);
            _containerView.alpha = 1;
        }];
    }else{
        [UIView animateWithDuration:1.0 animations:^{
            _containerView.frame = CGRectMake(_containerView.frame.origin.x, _containerView.frame.origin.y, _containerView.frame.size.width, 0);
            _containerView.alpha = 0;
        }];
    }
}
@end
