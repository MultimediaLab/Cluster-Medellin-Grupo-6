#import <UIKit/UIKit.h>
#import "Temperature.h"

@interface ConverterOneViewController : UIViewController{
    Temperature * converterOne;
}

@property (strong, nonatomic) IBOutlet UITextField *valueTxt;

- (IBAction)convertCtoFButton:(id)sender;
- (IBAction)convertFtoCButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *resultTxt;

@end
