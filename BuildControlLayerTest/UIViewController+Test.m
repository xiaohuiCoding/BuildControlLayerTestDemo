//
//  UIViewController+Test.m
//  OCTest
//
//  Created by xiaohui on 2018/2/6.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "UIViewController+Test.h"
#import <objc/runtime.h>

@implementation UIViewController (Test)

//扩展的方法中不需要用到对象的实例属性
- (void)test {
    NSLog(@"扩展方法test被调用了！");
}

- (void)viewDidLoadTest {
    [self viewDidLoadTest];
    [self test];
}

//方法替换
+ (void)load {
    Method originalMethod = class_getInstanceMethod(self, @selector(viewDidLoad));
    Method swizzledMethod = class_getInstanceMethod(self, @selector(viewDidLoadTest));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

@end
