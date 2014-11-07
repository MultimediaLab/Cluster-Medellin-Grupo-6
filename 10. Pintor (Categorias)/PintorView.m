
#import "PintorView.h"

@implementation PintorView
-(CGRect)currentRect{
    return CGRectMake(_firstTouch.x, _firstTouch.y, _lastTouch.x-_firstTouch.x, _lastTouch.y-_firstTouch.y);
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_useRandomColor) {
        _currentColor = [UIColor randomColor];
    }
    UITouch * touch = [touches anyObject];
    _firstTouch = [touch locationInView:self];
    _lastTouch = [touch locationInView:self];
    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    _lastTouch = [touch locationInView:self];
    _redrawRect = CGRectUnion(_redrawRect, self.currentRect);
    [self setNeedsDisplayInRect:_redrawRect];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    _lastTouch = [touch locationInView:self];
    _redrawRect = CGRectUnion(_redrawRect, self.currentRect);
    [self setNeedsDisplayInRect:_redrawRect];
}
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0f);
    CGContextSetStrokeColorWithColor(context, _currentColor.CGColor);
    CGContextSetFillColorWithColor(context, _currentColor.CGColor);
    switch (_colorType) {
        case kRedColor:
            _currentColor = [UIColor redColor];
            _useRandomColor = NO;
            break;
        case kYellowColor:
            _currentColor = [UIColor yellowColor];
            _useRandomColor = NO;
            break;
        case KBlueColor:
            _currentColor = [UIColor blueColor];
            _useRandomColor = NO;
            break;
        case kGreenColor:
            _currentColor = [UIColor greenColor];
            _useRandomColor = NO;
            break;
        case kRandomColor:
            _useRandomColor = YES;
            break;
    }

    switch (_shapeType) {
        case kLineShape:
            CGContextMoveToPoint(context, _firstTouch.x, _firstTouch.y);
            CGContextAddLineToPoint(context, _lastTouch.x, _lastTouch.y);
            CGContextStrokePath(context);
            break;
        case kEllipseShape:
            CGContextAddEllipseInRect(context, self.currentRect);
            CGContextDrawPath(context, kCGPathFillStroke);
            break;
        case kRectShape:
            CGContextAddRect(context, self.currentRect);
            CGContextDrawPath(context, kCGPathFillStroke);
            break;
        case kImageShape:
        {
            CGFloat horizontal = _drawImage.size.width/2;
            CGFloat vertical = _drawImage.size.height/2;
            CGPoint drawPoint = CGPointMake(_lastTouch.x-horizontal, _lastTouch.y-vertical);
            [_drawImage drawAtPoint:drawPoint];
        }
        break;
    }
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _drawImage =[UIImage imageNamed:@"icon.png"];
        _currentColor = [UIColor redColor];
        //_currentColor = [UIColor randomColor];
    }
    return self;
}


@end
