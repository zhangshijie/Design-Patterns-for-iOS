//
//  Dot.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Dot1.h"

@implementation Dot1

@synthesize size=_size,color=_color,tag;

- (void) dealloc
{
    [_color release];
    [super dealloc];
}

@end
