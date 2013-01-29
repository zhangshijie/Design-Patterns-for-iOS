//
//  Vertex.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Vertex2.h"

@implementation Vertex2

@synthesize location=_location,color,size;

- (id) initWithLocation:(CGPoint )aLocation
{
    if(self=[super init])
    {
        [self setLocation:aLocation];
    }
}

//default properties do nothing
- (void) setColor:(UIColor *)color{}
- (UIColor *)color {return nil;}

- (void)setSize:(CGFloat)size{}
- (CGFloat )Size {return 0.0;}


//operation do nothing
- (void) addMark : (id <Mark2>) mark{}
- (void) removeMark :(id <Mark2>) mark{}
- (id <Mark2>) childMarkAtIndex: (NSUInteger ) index {return nil;}
- (id <Mark2>) lastChild {return nil;}
- (NSUInteger ) count {return  0;}


- (void) acceptMarkVisitor:(id <MarkVistor>)visitor
{
    [visitor visitVertex:self];
}
@end
