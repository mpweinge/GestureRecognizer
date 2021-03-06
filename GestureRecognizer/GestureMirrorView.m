//
//  GestureMirrorView.m
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GestureMirrorView.h"

@implementation GestureMirrorView

@synthesize GestureRecognizer;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) initWithGestureRecognizer:(SwipeGestureRecognizer *)_GestureRecognizer
{
    GestureRecognizer = _GestureRecognizer;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    if (GestureRecognizer == nil)
        return;
    
    // Drawing code
    CGContextRef myContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(myContext, 4.0);
    
    NSMutableArray* GesturePoints = GestureRecognizer->SwipePoints;
    
    CGContextSetRGBStrokeColor(myContext, 0, 1.0, 1.0, 1.0);
    
    float arrayCount = [GesturePoints count];
    
    for (int i = 1; i < arrayCount; i++)
    {
        CGPoint FirstPoint = [[GesturePoints objectAtIndex:i-1] CGPointValue];
        CGPoint SecondPoint = [[GesturePoints objectAtIndex:i] CGPointValue];
        
        CGContextMoveToPoint(myContext, FirstPoint.x, FirstPoint.y);
        CGContextAddLineToPoint(myContext, SecondPoint.x, SecondPoint.y);
        CGContextStrokePath(myContext);
    }
    
    // Draw the current slope
    CGFloat w, h;
    w = 20;
    h = 26;
    
    CGContextSelectFont (myContext, // 3
                         "Courier",
                         h,
                         kCGEncodingMacRoman);
    CGContextSetCharacterSpacing (myContext, 10); // 4
    CGContextSetTextDrawingMode (myContext, kCGTextFillStroke); // 5
    
//    CGAffineTransform myTextTransform =  CGAffineTransformMakeRotation  ( 180 * M_PI / 180); // 8
//    CGContextSetTextMatrix (myContext, myTextTransform);
    CGContextScaleCTM(myContext, 1, -1);
    
    CGContextSetRGBFillColor (myContext, 0, 1, 0, .5); // 6
    CGContextSetRGBStrokeColor (myContext, 0, 0, 1, 1); // 7
    NSString* message = [NSString stringWithFormat:@"Slope: %f", GestureRecognizer->CurrentSlope * 180 / M_PI];
    CGContextShowTextAtPoint (myContext, 100, -40, [message UTF8String], [message length]);
}
@end
