//
//  AnyPizza.m
//  SinglonTest
//
//  Created by 张 世杰 on 13-3-1.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "AnyPizza.h"

@implementation AnyPizza

- (void) make{
    [self addMeet];
    [self addCondiments];
    [self ExtraStep];
    [self putOnPlate];
    [self serve];
}



- (void) addMeet{
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@in a subclass",NSStringFromSelector(_cmd)];
}

- (void) addCondiments{
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@in a subclass",NSStringFromSelector(_cmd)];
}


- (void) ExtraStep{
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@in a subclass",NSStringFromSelector(_cmd)];
}


- (void) putOnPlate{
    NSLog(@"Now put Pizza on the plate");   
}

- (void) serve{
    NSLog(@"Now servce to client");
}

@end
