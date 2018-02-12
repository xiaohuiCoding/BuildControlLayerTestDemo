//
//  A.m
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/8.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "A.h"

@interface B ()

//在A的内部用到了B的属性和方法，所以要这里申明一下。
@property id priPropInOther;

- (void)priFnInOther;

@end

@interface A ()

@property id priProp;

- (void)priFn;

@end

@implementation A

- (void)pubFn {
    [_b priFnInOther];//A内部调用B的私有方法
    [_b pubFn];
    
    id temp = _b.priPropInOther;//A内部访问B的私有属性
    NSLog(@"_b.priPropInOther = %@",temp);
}

- (void)priFn {
    
}

@end

//公有方法
@implementation A(Public)

@end

//事件处理方法
@implementation A(Handle)

@end

@implementation A (Business)

@end

@implementation A (DataSource)

@end

@implementation A (Delegate)

@end
