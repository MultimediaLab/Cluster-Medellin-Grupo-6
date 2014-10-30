#import "User.h"

@implementation User
-(NSString *)name{
    return name;
}
-(void)setName:(NSString *)value{
    name = value;
}
-(int)age{
    return age;
}
-(void)setAge:(int)value{
    age= value;
}
-(BOOL)isUserAdult{
    if (age>=18) {
        return YES;
    }
    return NO;
}
@end
