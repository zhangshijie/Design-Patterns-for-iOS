//
//  ImageShadowFilter.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter
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
    
    // set up shadow
    CGSize offset = CGSizeMake (-25,  15);
    CGContextSetShadow(context, offset, 20.0);
}
@end
