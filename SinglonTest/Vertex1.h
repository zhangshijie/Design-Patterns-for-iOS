//
//  Vertex.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark1.h"
@interface Vertex1 : NSObject <Mark1>
{
    @protected
    CGPoint _location;
}



@property (nonatomic,retain) UIColor  *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;
@property (nonatomic,assign) NSInteger tag;


- (id)initWithLocation:(CGPoint ) location;
- (void) addMark : (id <Mark1>) mark;
- (void) removeMark :(id <Mark1>) mark;
- (id <Mark1>) childMarkAtIndex: (NSUInteger ) index;

//Iterator模式
- (NSEnumerator *)enumerator;



@end
