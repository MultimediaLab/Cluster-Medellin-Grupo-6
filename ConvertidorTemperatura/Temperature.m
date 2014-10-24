#import "Temperature.h"

@implementation Temperature





-(NSString *)convertCtoF:(float)valueToConvert{
    farenheit = valueToConvert*1.8000f+32;
    return [NSString stringWithFormat:@"%.02f ºF", farenheit];
}
-(NSString *)convertFtoC:(float)valueConvert{
    celsius = (valueConvert-32)/1.800f;
    return [NSString stringWithFormat:@"%.02f ºC", celsius];
}
-(NSString*)convertCtoK:(float)valueConvert{
    kelvin = valueConvert + 273.15f;
    return [NSString stringWithFormat:@"%.02f ºK", kelvin];
}
-(NSString*)convertKtoC:(float)valueConvert{
    celsius = valueConvert - 273.15f;
    return [NSString stringWithFormat:@"%.02f ºC", celsius];
}
@end
