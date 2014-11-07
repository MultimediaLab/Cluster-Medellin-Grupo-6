//
//  Model.h
//  Calendar
//
//  Created by Profesor on 6/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CalendarViewController;

@interface Model : NSObject <UIPageViewControllerDataSource>

-(CalendarViewController*) viewControllerAtIndex:(NSInteger)index storyboard:(UIStoryboard*)storyboard;

-(NSUInteger) indexOfViewController: (CalendarViewController*)viewController;


@end
