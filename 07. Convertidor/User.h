//
//  User.h
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString * name;
@property NSString * pass;

-(BOOL)isUserAutorizate;

  @end
