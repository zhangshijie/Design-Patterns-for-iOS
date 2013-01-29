//
//  Vertex.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark2.h"
@interface Vertex2:NSObject <Mark2>
{
    @protected
    CGPoint _location;
}



@property (nonatomic,retain) UIColor  *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;

- (id)initWithLocation:(CGPoint ) location;
- (void) addMark : (id <Mark2>) mark;
- (void) removeMark :(id <Mark2>) mark;
- (id <Mark2>) childMarkAtIndex: (NSUInteger ) index;


- (void) acceptMarkVisitor:(id <MarkVistor>)visitor;

@end
