//
//  ViewController.h
//  Navegador Web
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *animacion;

@property (strong, nonatomic) IBOutlet UIWebView *web;
- (IBAction)htmlButton:(id)sender;
- (IBAction)jsButton:(id)sender;

- (IBAction)urlButton:(id)sender;
- (IBAction)pdfButton:(id)sender;

@end

