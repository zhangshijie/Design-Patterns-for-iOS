//
//  AttackHandler.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Attack.h"

@interface AttackHandler : NSObject
{
    @private
    AttackHandler *_nextHandler;
}
@property (nonatomic,retain) AttackHandler  *nextHandler;

- (void) handle :(Attack *) aAttack;
//- (void) initWithAttack : (Attack *) aAttack;

@end
