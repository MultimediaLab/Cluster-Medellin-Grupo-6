
#import "UIColor+Random.h"
@implementation UIColor (Random)
+(UIColor *)randomColor{
    
    //ROJO-VERDE-AZUL
    CGFloat red = (arc4random() % 255) / 255.0f;
    CGFloat green = (arc4random() % 255) / 255.0f;
    
    
    CGFloat blue = (arc4random() % 255) / 255.0f;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}
@end
