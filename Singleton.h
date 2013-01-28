//
//  Singleton.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-1-25.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic,retain) NSString  *i;

+ (Singleton *) shareInstance;

- (void) doSomething;



@end
