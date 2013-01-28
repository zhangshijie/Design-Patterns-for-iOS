//
//  Internal.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark1.h"

@interface MarkEnumerator()


- (id) initWithMark : (id <Mark1>) mark;
- (void) traverseAndBuildStackWithMark : (id <Mark1>) mark;

@end
