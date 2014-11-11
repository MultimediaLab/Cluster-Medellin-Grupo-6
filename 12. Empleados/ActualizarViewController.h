#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface ActualizarViewController : UIViewController
{
    UIAlertView * alerta;
    Empleados * updateEmploy;
    
}
- (IBAction)searchEmployed:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *updateButton;
- (IBAction)updateEmployed:(id)sender;
@property (strong, nonatomic) IBOutlet UISearchBar *textSearch;
@property (strong, nonatomic) IBOutlet UITextField *nameText;
@property (strong, nonatomic) IBOutlet UITextField *jobText;
@property (strong, nonatomic) IBOutlet UITextField *phoneText;
@property (strong, nonatomic) IBOutlet UITextField *adressText;

@end
