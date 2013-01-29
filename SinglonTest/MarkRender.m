//
//  MarkRender.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "MarkRender.h"
#import "Vertex2.h"
#import "Stroke2.h"
#import "Dot2.h"

@implementation MarkRender


- (void) visitVertex:(Vertex2 *) aVertex
{
    NSLog(@"%f",aVertex.location.x) ;
}
- (void) visitStroke:(Stroke2 *) aStroke
{
    NSLog(@"%f",aStroke.location.x) ;
}
- (void) visitDot:(Dot2 *) aDot
{
    NSLog(@"%f",aDot.location.x) ;
}
@end
