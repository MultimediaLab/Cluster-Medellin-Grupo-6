
#import <UIKit/UIKit.h>
#import "PrincipalDelegate.h"

@interface PrincipalViewController : UIViewController

@property id <PrincipalDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *nameUserTxt;

@property (strong, nonatomic) IBOutlet UITextField *messageTxt;

@property NSString * dataTransfer;

- (IBAction)exitButton:(id)sender;

@end
