//
//  SwipeGestureRecognizer.m
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import "SwipeGestureRecognizer.h"

@implementation SwipeGestureRecognizer

@synthesize MainView, GestureView;

-(void) initWithViews : (UIView* ) _MainView GestureView:(UIView*)_GestureView
{
    MainView = _MainView;
    GestureView = _GestureView;
    SwipePoints = [[NSMutableArray alloc]init];
}

-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    [SwipePoints removeAllObjects];
    UITouch* CurrTouch = [[touches allObjects] objectAtIndex:0];
    CGPoint newPoint;
    newPoint = [CurrTouch locationInView:MainView];
    [SwipePoints addObject:[NSValue valueWithCGPoint:newPoint]];
}

-(void) touchesCancelled: (NSSet* ) touches withEvent: (UIEvent *) event
{
    NSLog(@"Touches cancelled");
}

- (void) touchesEnded: (NSSet*) touches withEvent: (UIEvent *) event
{
    UITouch* CurrTouch = [[touches allObjects] objectAtIndex:0];
    CGPoint newPoint;
    newPoint = [CurrTouch locationInView:MainView];
    [SwipePoints addObject:[NSValue valueWithCGPoint:newPoint]];
    [GestureView setNeedsDisplay];
}

- (void) touchesMoved: (NSSet*) touches withEvent: (UIEvent*) event
{
    UITouch* CurrTouch = [[touches allObjects] objectAtIndex:0];
    CGPoint newPoint;
    newPoint = [CurrTouch locationInView:MainView];
    [SwipePoints addObject:[NSValue valueWithCGPoint:newPoint]];
    [GestureView setNeedsDisplay];
}

@end
