//
//  Decorator.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+ImageCompent.h"
#import "ImageCompent.h"

@interface Decorator : NSObject <ImageCompent>
{
    @private 
    id <ImageCompent> _Compent;
}

- (void) apply;
- (id) initWithImageCompent :(id <ImageCompent>) compent;
- (id) forwardingTargetForSelector:(SEL)aSelector;



/*
 // overridden methods in UIImage APIs
 - (void) drawAsPatternInRect:(CGRect)rect; 
 - (void) drawAtPoint:(CGPoint)point;
 - (void) drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 - (void) drawInRect:(CGRect)rect;
 - (void) drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 */


@end
