//
//  Vertex.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex 

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
- (void) addMark : (id <Mark>) mark{}
- (void) removeMark :(id <Mark>) mark{}
- (id <Mark>) childMarkAtIndex: (NSUInteger ) index {return nil;}
- (id <Mark>) lastChild {return nil;}
- (NSUInteger ) count {return  0;}



@end
