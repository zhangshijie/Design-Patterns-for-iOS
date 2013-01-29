//
//  Stroke.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Stroke2.h"

@implementation Stroke2

@synthesize color=_color,size=_size;
@dynamic location;

- (id) init
{
    if(self =[super init]){
        _children= [[NSMutableArray alloc]initWithCapacity:5];
    }
    return  self;
}


- (void) setLocation:(CGPoint) aPoint{
    
}

- (CGPoint ) location
{
    if ([_children count]>0) {
        return [[_children objectAtIndex:0] location];
    }
    
    return CGPointZero;
}


- (void) addMark:(id<Mark2>)mark
{
    [_children addObject:mark];
}

- (void) removeMark:(id<Mark2>)mark
{
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}


- (id <Mark2>)childMarkAtIndex:(NSUInteger)index
{
    if (index<0) {
        return nil;
    }
    
    if (index>=[_children count]) {
        return nil;
    }
    
    return [_children objectAtIndex:index];
}

- (NSInteger ) count
{
    [_children count];
}

- (id <Mark2>) lastChild
{
    return [_children lastObject];
} 
    
- (void) acceptMarkVisitor:(id <MarkVistor>)visitor
{
    [visitor visitStroke:self];
}

@end
