//
//  MarkEnumerator.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+Stack.h"
#import "Mark1.h"


@interface MarkEnumerator : NSEnumerator
{
    @private
    NSMutableArray *_stack;
}
@property (nonatomic,assign) NSInteger tag;

- (NSArray *) allObjects;
- (id) nextObject;


@end
