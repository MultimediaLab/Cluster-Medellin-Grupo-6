//
//  User.h
//  ValidarEdad
//
//  Created by Profesor on 21/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSString * name;
    int age;
}

//GET NAME
-(NSString*)name;

//SET NAME
-(void)setName: (NSString*)value;

//GET AGE
-(int)age;

//SET AGE
-(void)setAge: (int)value;

-(BOOL)isUserAdult;

@end
