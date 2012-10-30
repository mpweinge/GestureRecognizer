//
//  GestureMirrorView.h
//  GestureRecognizer
//
//  Created by Administrator on 10/29/12.
//  Copyright (c) 2012 MichaelWeingert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwipeGestureRecognizer.h"

@interface GestureMirrorView : UIView
{
@private
    SwipeGestureRecognizer* GestureRecognizer;
    
}

@property (nonatomic, retain) SwipeGestureRecognizer* GestureRecognizer;

-(void) initWithGestureRecognizer: (SwipeGestureRecognizer*) GestureRecognizer;

@end
