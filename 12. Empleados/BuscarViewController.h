#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface BuscarViewController : UIViewController
{
    UIAlertView * mensaje;
}
@property (strong, nonatomic) IBOutlet UISearchBar *cedulaSearch;
@property (strong, nonatomic) IBOutlet UILabel *nameTxt;
@property (strong, nonatomic) IBOutlet UILabel *jobTxt;
@property (strong, nonatomic) IBOutlet UILabel *phoneTxt;
@property (strong, nonatomic) IBOutlet UILabel *adressTxt;
- (IBAction)serchEmployed:(id)sender;

@end
