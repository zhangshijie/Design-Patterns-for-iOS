//
//  ImageShadowFilter.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Decorator.h"

@interface ImageShadowFilter : Decorator
{
    @private 
    CGAffineTransform _transform;
}

@property (nonatomic,assign) CGAffineTransform transform;

- (id) initWithImageCompent:(id<ImageCompent>) compent :(CGAffineTransform ) aCGAffineTransform;
- (void) apply;


@end
