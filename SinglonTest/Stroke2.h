//
//  Stroke.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark2.h"

@interface Stroke2 : NSObject <Mark2>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}

@property (nonatomic,retain) UIColor  *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;
@property (nonatomic,readonly) id <Mark2> lastChild;

//- (id)copy;
- (void) addMark : (id <Mark2>) mark;
- (void) removeMark :(id <Mark2>) mark;
- (id <Mark2>) childMarkAtIndex: (NSUInteger ) index;

- (void) acceptMarkVisitor:(id <MarkVistor>)visitor;

@end
