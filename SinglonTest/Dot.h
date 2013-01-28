//
//  Dot.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}

@property (nonatomic,retain) UIColor *_color;
@property (nonatomic,assign) CGFloat _size;


@end
