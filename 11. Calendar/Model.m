//
//  Model.m
//  Calendar
//
//  Created by Profesor on 6/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "Model.h"
#import "CalendarViewController.h"
@interface Model ()
@property (readonly) NSArray * pageData;
@end
@implementation Model
-(instancetype)init{
    self = [super init];
    if (self) {
        _pageData = @[@"Enero", @"Febrero", @"Marzo", @"Abril", @"Mayo", @"Junio", @"Julio", @"Agosto", @"Septiembre", @"Octubre", @"Noviembre", @"Diciembre"];
    }
    return self;
}
-(CalendarViewController *)viewControllerAtIndex:(NSInteger)index storyboard:(UIStoryboard *)storyboard{
    if (index>= [_pageData count]) {
        return nil;
    }
    CalendarViewController * calendar = [storyboard instantiateViewControllerWithIdentifier:@"Calendar"];
    calendar.dataObject = [_pageData objectAtIndex:index];
    return calendar;
}
-(NSUInteger)indexOfViewController:(CalendarViewController *)viewController{
    return [_pageData indexOfObject:viewController.dataObject];
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    NSUInteger index = [self indexOfViewController:(CalendarViewController*)viewController];
    if (index == [_pageData count]-1) {
        return nil;
    }
    index++;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    NSUInteger index = [self indexOfViewController:(CalendarViewController *)viewController];
    if (index==0) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

@end
