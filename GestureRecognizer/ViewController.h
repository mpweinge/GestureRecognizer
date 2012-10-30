//
//  ViewController.h
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GestureMirrorView.h"
#import "SwipeGestureRecognizer.h"

@interface ViewController : UIViewController
{
@private
    SwipeGestureRecognizer* gestureRecognizer;
    UIView* MainView;
    GestureMirrorView* MirrorView;
}

@property(nonatomic, retain) IBOutlet UIView* MainView;

@property (nonatomic, retain) IBOutlet GestureMirrorView* MirrorView;

@property (nonatomic, retain) SwipeGestureRecognizer* gestureRecognizer;

@end
