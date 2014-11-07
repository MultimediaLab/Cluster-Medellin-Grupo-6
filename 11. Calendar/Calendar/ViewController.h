//
//  ViewController.h
//  Calendar
//
//  Created by Profesor on 6/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "CalendarViewController.h"

@interface ViewController : UIViewController <UIPageViewControllerDelegate>

@property Model * modelo;
@property UIPageViewController * page;


@end

