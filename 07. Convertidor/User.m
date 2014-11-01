//
//  User.m
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "User.h"

@implementation User

-(BOOL)isUserAutorizate{

    if ([_name isEqualToString:@"admin"] && [_pass isEqualToString:@"123"]) {
        return YES;
        
    }
    return NO;
}

@end
