#import <UIKit/UIKit.h>
#import "Constants.h"
#import "UIColor+Random.h"


@interface PintorView : UIView
@property CGPoint firstTouch;
@property CGPoint lastTouch;

@property (nonatomic) CGRect currentRect;
@property CGRect redrawRect;
@property UIColor * currentColor;
@property BOOL useRandomColor;
@property ShapeType shapeType;
@property ColorType colorType;
@property UIImage * drawImage;

@end
