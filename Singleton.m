//
//  Singleton.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-25.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize i;

static Singleton *mSingleton = nil;


+ (Singleton *) shareInstance{
   
    @synchronized(self)
    {
        if (!mSingleton) {
            mSingleton =[ [[self class] alloc]init];
        }else {
            NSLog(@"U have one already");
        }
    }
    return  mSingleton;
}

- (void)doSomething{
    NSLog(@"Singleton");
}

- (id) retain{
    //do nothing
}

- (NSInteger) retainCount{
    return NSUIntegerMax;
}

- (id) copyWithZone:(NSZone *)zone
{
    return  self;
}

- (id) allocWithZone:(NSZone *)zone
{
    return  [[self mSingleton] retain];
}


- (id) autorelease
{  
    return self;
}
@end
