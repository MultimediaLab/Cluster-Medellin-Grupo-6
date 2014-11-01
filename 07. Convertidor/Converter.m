//
//  Converter.m
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "Converter.h"

@implementation Converter
-(NSString *)convertDolar:(NSString *)dolar inpesos:(float)tasaPesos{
    
    return [NSString stringWithFormat:@"$ %.02f", [dolar floatValue] * tasaPesos ];
}

@end
