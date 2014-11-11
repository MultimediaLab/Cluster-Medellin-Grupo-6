#import "ViewController.h"
#import "Empleados.h"

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    Empleados * empleado = [[Empleados alloc] init];
    [empleado createDatabaseInDocuments];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
