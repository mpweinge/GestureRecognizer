//
//  SwipeGestureRecognizer.h
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeGestureRecognizer : UIGestureRecognizer
{
@private
    UIView* MainView;
    UIView* GestureView;
@public
    NSMutableArray* SwipePoints;
}

@property (nonatomic, retain) UIView* MainView;
@property (nonatomic, retain) UIView* GestureView;

-(void) initWithViews : (UIView* ) _MainView GestureView: (UIView*) _GestureView;
-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event;
-(void) touchesCancelled: (NSSet* ) touches withEvent: (UIEvent *) event;
- (void) touchesEnded: (NSSet*) touches withEvent: (UIEvent *) event;
- (void) touchesMoved: (NSSet*) touches withEvent: (UIEvent*) event;


@end
