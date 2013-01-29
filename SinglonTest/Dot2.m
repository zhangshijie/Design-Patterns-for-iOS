//
//  Dot.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Dot2.h"

@implementation Dot2

@synthesize size=_size,color=_color;

- (void) dealloc
{
    [_color release];
    [super dealloc];
}

- (void) acceptMarkVisitor:(id <MarkVistor>)visitor
{
    [visitor visitDot:self];
}
@end
