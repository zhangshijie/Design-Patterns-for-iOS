//
//  Dot.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize size=_size,color=_color;

- (void) dealloc
{
    [_color release];
    [super dealloc];
}

@end
