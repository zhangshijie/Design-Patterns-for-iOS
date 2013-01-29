//
//  AttackHandler2.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "AttackHandler2.h"
#import "Attacks2.h"
@implementation AttackHandler2 :AttackHandler


- (void) handle :(Attack *) aAttack
{
    if([aAttack isKindOfClass: [Attacks2 class]]){
        NSLog(@"take Attacks2");
    }else {
        [super handle:aAttack];
    }
}
@end
