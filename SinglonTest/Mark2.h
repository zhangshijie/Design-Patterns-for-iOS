//
//  Mark.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MarkVistor.h"

@protocol Mark2 <NSObject,NSCopying,NSCopying>

@property (nonatomic,retain) UIColor  *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;

- (id)copy;
- (void) addMark : (id <Mark2>) mark;
- (void) removeMark :(id <Mark2>) mark;
- (id <Mark2>) childMarkAtIndex: (NSUInteger ) index;

- (void) acceptMarkVisitor:(id <MarkVistor>)visitor;
@end
