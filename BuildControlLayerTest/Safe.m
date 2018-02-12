//
//  Safe.m
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/8.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "Safe.h"

@interface Safe ()

//内部可读可写
@property (nonatomic, copy) NSString *prop1;
@property (nonatomic, assign) NSInteger prop2;

@end

@implementation Safe

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        self.prop1 = @"abc";
        self.prop2 = 100;
    }
    return self;
}

@end
