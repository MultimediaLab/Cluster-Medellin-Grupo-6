#import <UIKit/UIKit.h>
#import "User.h"

@interface ViewController : UIViewController
{
    User * person;

}
@property (strong, nonatomic) IBOutlet UITextField *nameTxt;
@property (strong, nonatomic) IBOutlet UITextField *ageTxt;
@property (strong, nonatomic) IBOutlet UILabel *resultTxt;

- (IBAction)validateAge:(id)sender;

@end

