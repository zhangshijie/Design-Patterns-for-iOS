//
//  AttackHandler.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

@synthesize nextHandler= _nextHandler;

- (void) initWithAttack
{
    [super init];
    return self;
}



- (void) handle
{
    [_nextHandler handle];
}


@end
