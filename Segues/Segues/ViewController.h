#import <UIKit/UIKit.h>
#import "PrincipalDelegate.h"

@interface ViewController : UIViewController <PrincipalDelegate>

@property (strong, nonatomic) IBOutlet UITextField *userTxt;
@property (strong, nonatomic) IBOutlet UITextField *passTxt;

@property (strong, nonatomic) IBOutlet UILabel *resultTxt;

@end

