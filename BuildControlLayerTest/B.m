//
//  B.m
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/8.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "B.h"
#import "A.h"

@interface A ()

//在B的内部用到了A的属性和方法，所以要这里申明一下。
@property id priPropInOther;

- (void)priFnInOther;

@end

@interface B ()

@property (weak) A *a;//B的内部弱持有A
@property id priProp;

- (void)priFn;

@end

@implementation B

- (void)pubFn {
    [_a priFnInOther];
    [_a pubFn];
    
    id temp = _a.priPropInOther;//A内部访问B的私有属性
    NSLog(@"_a.priPropInOther = %@",temp);
}

- (void)priFn {
    
}

@end
