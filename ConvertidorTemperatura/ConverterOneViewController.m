#import "ConverterOneViewController.h"

@interface ConverterOneViewController ()

@end

@implementation ConverterOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    converterOne= [[Temperature alloc] init];
   
}
- (IBAction)convertCtoFButton:(id)sender {
    _resultTxt.text=[converterOne convertCtoF:[_valueTxt.text floatValue]];
    [self.view endEditing:YES];
}

- (IBAction)convertFtoCButton:(id)sender {
    _resultTxt.text=[converterOne convertFtoC:[_valueTxt.text floatValue]];
    [self.view endEditing:YES];
}



@end






