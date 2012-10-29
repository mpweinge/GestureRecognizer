//
//  SwipeGestureRecognizer.m
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import "SwipeGestureRecognizer.h"

@implementation SwipeGestureRecognizer

@synthesize MainView;

-(void) initWithView : (UIView* ) _MainView
{
    MainView = _MainView;
}

-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    NSLog(@"Touches began");
}

-(void) touchesCancelled: (NSSet* ) touches withEvent: (UIEvent *) event
{
    NSLog(@"Touches cancelled");
}

- (void) touchesEnded: (NSSet*) touches withEvent: (UIEvent *) event
{
    NSLog(@"Touches ended");
}

- (void) touchesMoved: (NSSet*) touches withEvent: (UIEvent*) event
{
    NSLog(@"Touches moved");
}

@end
