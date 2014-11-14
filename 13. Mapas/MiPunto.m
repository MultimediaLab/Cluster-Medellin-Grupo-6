
#import "MiPunto.h"


@implementation MiPunto

-(id)initWithCoordinate:(CLLocationCoordinate2D)coor title:(NSString *)text{
    self = [super init];
    if (self) {
        _coordinate = coor;
        _title = text;
    }
    return self;
}
-(instancetype)init{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(6.235925, -75.57513) title:@"Medellin"];
}

@end
