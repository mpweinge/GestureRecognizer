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
}

@property (nonatomic, retain) UIView* MainView;

-(void) initWithView : (UIView* ) _MainView;
-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event;
-(void) touchesCancelled: (NSSet* ) touches withEvent: (UIEvent *) event;
- (void) touchesEnded: (NSSet*) touches withEvent: (UIEvent *) event;
- (void) touchesMoved: (NSSet*) touches withEvent: (UIEvent*) event;


@end
