

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameUserTxt.text = _dataTransfer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)exitButton:(id)sender {
    
    [_delegate exitUserWithMessage:_messageTxt.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
