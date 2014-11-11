#import "EliminarViewController.h"

@interface EliminarViewController ()

@end

@implementation EliminarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _deleteButton.enabled = NO;
    deleteEmploy = [[Empleados alloc] init];
    
}
- (IBAction)searchEmployed:(id)sender {
    deleteEmploy.empCedula = _textSearch.text;
    [deleteEmploy searchEmployedInDatabase];
    alerta = [[UIAlertView alloc] initWithTitle:@"Mensaje" message:deleteEmploy.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [alerta show];
    _nameText.text = deleteEmploy.empName;
    _jobText.text = deleteEmploy.empJob;
    _phoneText.text = deleteEmploy.empPhone;
    _adressText.text = deleteEmploy.empAdress;
    
    if (deleteEmploy.empId) {
        _deleteButton.enabled = YES;
    }else{
        _deleteButton.enabled = NO;
    }
}
- (IBAction)deleteEmployed:(id)sender {
    [deleteEmploy deleteEmployedInDatabase];
    alerta = [[UIAlertView alloc] initWithTitle:@"Mensaje" message:deleteEmploy.status delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    [alerta show];
    _nameText.text = _jobText.text = _phoneText.text = _adressText.text = @"------------------------";
}

@end
