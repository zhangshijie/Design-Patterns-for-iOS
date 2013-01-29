//
//  MarkVistor.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Mark2;
@class Vertex2;
@class Stroke2;
@class Dot2;

@protocol MarkVistor <NSObject>

- (void) visitMark:(id <Mark2>)mark;
- (void) visitVertex:(Vertex2 *)aVertex;
- (void) visitStroke:(Stroke2 *)aStroke;
- (void) visitDot:(Dot2 *)aDot;

@end

//@protocol MarkVisitor <NSObject>
//
//- (void) visitMark:(id <Mark2>)mark;
//- (void) visitDot:(Dot2 *)dot;
//- (void) visitVertex:(Vertex2 *)vertex;
//- (void) visitStroke:(Stroke2 *)stroke;
//
//@end