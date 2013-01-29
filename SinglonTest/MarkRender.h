//
//  MarkRender.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-29.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MarkVistor.h"

@interface MarkRender : NSObject <MarkVistor>
{
    
}
- (void) visitVertex:(Vertex2 *) aVertex;
- (void) visitStroke:(Stroke2 *) aStroke;
- (void) visitDot:(Dot2 *) aDot;

@end
