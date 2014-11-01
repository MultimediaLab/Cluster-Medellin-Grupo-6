//
//  ViewController.h
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "ConverterViewController.h"

@interface ViewController : UIViewController <UIAlertViewDelegate >
{
    User * usuario;
    UIAlertView * alerta;

}
@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *userPass;


@end

