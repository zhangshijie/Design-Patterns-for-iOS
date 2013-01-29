//
//  Decorator.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (id) initWithImageCompent:(id<ImageCompent>)compent
{
    if (self =[ super init]){
        _Compent = compent;    
    }
    
    return  self;
}

- (void) apply
{
    //do nothing
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"])
    {
        [self apply];
    }

    return  _Compent;
}

@end
