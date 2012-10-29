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

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef myContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(myContext, 4.0);
    
    CGContextMoveToPoint(myContext, 0, 0);
    
    CGContextSetRGBStrokeColor(myContext, 0, 1.0, 1.0, 1.0);
    
    CGContextAddLineToPoint(myContext, 50, 50);
    CGContextStrokePath(myContext);
    
    NSLog(@"Draw rect called");
}
@end
