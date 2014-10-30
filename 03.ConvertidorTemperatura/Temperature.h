#import <Foundation/Foundation.h>

@interface Temperature : NSObject
{
    float celsius;
    float farenheit;
    float kelvin;
}

#pragma -mark Method First View Controller
-(NSString*) convertCtoF:(float)valueToConvert;
-(NSString*) convertFtoC:(float)valueConvert;

#pragma -mark Method Second View Controller
-(NSString*) convertCtoK:(float)valueConvert;
-(NSString*) convertKtoC:(float)valueConvert;

@end
