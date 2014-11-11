#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface AdicionarViewController : UIViewController
{
    UIAlertView * mensaje;
}
@property (strong, nonatomic) IBOutlet UITextField *nameTxt;
@property (strong, nonatomic) IBOutlet UITextField *cedulaTxt;
@property (strong, nonatomic) IBOutlet UITextField *jobTxt;
@property (strong, nonatomic) IBOutlet UITextField *phoneTxt;
@property (strong, nonatomic) IBOutlet UITextField *adressTxt;

- (IBAction)saveEmployed:(id)sender;

@end
