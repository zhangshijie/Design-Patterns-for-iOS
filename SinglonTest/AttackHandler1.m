//
//  AttackHandler1.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "AttackHandler1.h"


@implementation AttackHandler1

- (void) handle :(Attacks1 *) aAttack
{
    if ([aAttack isKindOfClass:[Attacks1 class]]) {
        NSLog(@"take attacks1");
    }else{
        [super handle : aAttack];
    }
}

@end