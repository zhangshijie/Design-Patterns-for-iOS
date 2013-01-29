//
//  ImageTransformFilter.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "ImageTransformFilter.h"


@implementation ImageTransformFilter: Decorator

- (id) initWithImageCompent:(id<ImageCompent>)compent :(CGAffineTransform)aCGAffineTransform
{
     if(self = [super initWithImageCompent:compent])
     {
         _transform= aCGAffineTransform;
     }

     return  self;
}

- (void) apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // setup transformation
    CGContextConcatCTM(context, _transform);
}


@end
