//
//  Vertex.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Vertex1.h"

@implementation Vertex1

@synthesize location=_location,color,size,tag;

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
- (void) addMark : (id <Mark1>) mark{}
- (void) removeMark :(id <Mark1>) mark{}
- (id <Mark1>) childMarkAtIndex: (NSUInteger ) index {return nil;}
- (id <Mark1>) lastChild {return nil;}
- (NSUInteger ) count {return  0;}



@end
