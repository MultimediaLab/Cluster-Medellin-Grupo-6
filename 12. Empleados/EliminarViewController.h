
#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface EliminarViewController : UIViewController
{
    UIAlertView * alerta;
    Empleados * deleteEmploy;

}
- (IBAction)searchEmployed:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *deleteButton;
- (IBAction)deleteEmployed:(id)sender;
@property (strong, nonatomic) IBOutlet UISearchBar *textSearch;
@property (strong, nonatomic) IBOutlet UILabel *nameText;
@property (strong, nonatomic) IBOutlet UILabel *jobText;
@property (strong, nonatomic) IBOutlet UILabel *phoneText;
@property (strong, nonatomic) IBOutlet UILabel *adressText;
@end
