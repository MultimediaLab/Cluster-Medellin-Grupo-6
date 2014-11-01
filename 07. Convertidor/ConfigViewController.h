//
//  ConfigViewController.h
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigDelegate.h"

@interface ConfigViewController : UIViewController
- (IBAction)saveButton:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *minTxt;

@property id <ConfigDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *maxTxt;

@end
