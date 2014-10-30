#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    person = [[User alloc] init];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validateAge:(id)sender {
    
    [person setName:_nameTxt.text];
    [person setAge:[_ageTxt.text intValue]];
    
    if ([person isUserAdult]) {
        _resultTxt.text = [NSString stringWithFormat:@"%@ es Adulto y tiene %i años", [person name], [person age]];
    }else{
        _resultTxt.text = [NSString stringWithFormat:@"%@ no es Adulto y tiene %i años", [person name], [person age]];
    }
    
    [self.view endEditing:YES];
}
@end
