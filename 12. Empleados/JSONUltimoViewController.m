#import "JSONUltimoViewController.h"

#define kJSONURL [NSURL URLWithString:@"http://expertosit.co/usuariosIOS/"]
#define kQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@implementation JSONUltimoViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _animacion.hidden= NO;
    [_animacion startAnimating];
    dispatch_async(kQueue, ^{
        NSData * data = [NSData dataWithContentsOfURL:kJSONURL];
        [self performSelectorOnMainThread:@selector(printData:) withObject:data waitUntilDone:YES];
    });
}
-(void)printData:(NSData*)response{
    [_animacion stopAnimating];
    _animacion.hidden = YES;
    
    NSError * error;
    
    
    NSArray * json = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:&error];
//    NSLog(@"%@", json);
    NSDictionary * ultimoRegistro = [json lastObject];
    _idText.text = [NSString stringWithFormat:@"%@", [ultimoRegistro objectForKey:@"pk"]];
    _nameText.text = [[ultimoRegistro objectForKey:@"fields"] objectForKey:@"nombreExp"];
    _dateText.text = [[ultimoRegistro objectForKey:@"fields"] objectForKey:@"fechaIngre"];
    _emailText.text = [[ultimoRegistro objectForKey:@"fields"] objectForKey:@"correoExp"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
