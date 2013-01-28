//
//  Vertex.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
@interface Vertex : NSObject <Mark>
{
    @protected
    CGPoint _location;
}



@property (nonatomic,retain) UIColor  *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;

- (id)initWithLocation:(CGPoint ) location;
- (void) addMark : (id <Mark>) mark;
- (void) removeMark :(id <Mark>) mark;
- (id <Mark>) childMarkAtIndex: (NSUInteger ) index;




@end
