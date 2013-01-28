//
//  MarkEnumerator.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "MarkEnumerator.h"
#import "MarkEnumerator+Internal.h"


@implementation MarkEnumerator

@synthesize tag;

- (id)nextObject
{
    if([_stack count]>0)
    {
        return [_stack pop];
    }else {
        return nil;
    }
   
}

- (NSArray *)allObjects
{
    return [[_stack reverseObjectEnumerator] allObjects];
}


#pragma mark  private method

- (id) initWithMark : (id <Mark1>) mark
{
    if (self = [super init])
    {
        _stack = [[NSMutableArray alloc]initWithCapacity:[mark count]];
    }
    
    [self traverseAndBuildStackWithMark:mark];
    
    return  self;
}



- (void) traverseAndBuildStackWithMark : (id <Mark1>) mark
{
    if ( [mark count] == 0 ) return;
    
    [_stack push:mark];
    
    NSInteger index = [mark count];
    id <Mark1> aMark;
    
    while (aMark = [mark childMarkAtIndex:--index]) {
        
        [self traverseAndBuildStackWithMark:aMark];
    }
    
}


@end
