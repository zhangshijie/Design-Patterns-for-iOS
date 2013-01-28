//
//  Stroke.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Stroke1.h"

@implementation Stroke1

@synthesize color=_color,size=_size,tag;
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


- (void) addMark:(id<Mark1>)mark
{
    [_children addObject:mark];
}

- (void) removeMark:(id<Mark1>)mark
{
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}


- (id <Mark1>)childMarkAtIndex:(NSUInteger)index
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

- (id <Mark1>) lastChild
{
    return [_children lastObject];
} 

- (NSEnumerator *) enumerator
{
    return [[MarkEnumerator alloc]init];
}
    

@end
