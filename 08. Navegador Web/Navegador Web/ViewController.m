//
//  ViewController.m
//  Navegador Web
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _web.delegate = self;
}

- (IBAction)htmlButton:(id)sender {
    NSString * html = @"<h1>Titulo</h1><p style='color:red;'>Parrafo desde html</p>";
    [_web loadHTMLString:html baseURL:nil];
}

- (IBAction)jsButton:(id)sender {
    NSString * js = @"alert('hola desde js')";
    [_web stringByEvaluatingJavaScriptFromString:js];
    
}
- (IBAction)urlButton:(id)sender {
    NSURL * url = [NSURL URLWithString:@"http://apple.com" ];
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:url];
    [_web loadRequest:request];
    
}

- (IBAction)pdfButton:(id)sender {
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_animacion startAnimating];

}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_animacion stopAnimating];

}
@end
