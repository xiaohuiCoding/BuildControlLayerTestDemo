//
//  Helper.m
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/7.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "Helper.h"

@interface Helper ()

@property (weak) UIViewController *vc;//这里一定要是弱引用

@end

@implementation Helper

- (instancetype)initWithViewController:(UIViewController *)vc {
    self = [self init];
    if (self != nil) {
        _vc = vc;
    }
    return self;
}

- (void)fn1 {
    NSLog(@"self.vc.view = %@",self.vc.view);//这里可以访问视图控制器的方法
}

- (void)fn2 {
    NSLog(@"self.vc.childViewControllers.count = %lu",self.vc.childViewControllers.count);//这里可以访问视图控制器的方法
}

@end
