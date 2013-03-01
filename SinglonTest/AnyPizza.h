//
//  AnyPizza.h
//  SinglonTest
//
//  Created by 张 世杰 on 13-3-1.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnyPizza : NSObject

- (void) make;


- (void) addMeet;
- (void) addCondiments;
- (void) putOnPlate;
- (void) serve;
//hock
- (void) ExtraStep;

@end
