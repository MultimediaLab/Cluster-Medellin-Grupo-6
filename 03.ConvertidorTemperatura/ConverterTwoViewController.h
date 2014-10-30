#import <UIKit/UIKit.h>
#import "Temperature.h"

@interface ConverterTwoViewController : UIViewController{
    Temperature * converterTwo;
}
@property (strong, nonatomic) IBOutlet UITextField *valueTxt;
- (IBAction)convertCtoKButton:(id)sender;
- (IBAction)convertKtoCButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultTxt;

@end
