//
//  ConfigDelegate.h
//  Convertidor
//
//  Created by Profesor on 1/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ConfigDelegate <NSObject>

-(void)configDataSlider : (float) minValue and: (float) maxValue;

@end
