//
//  BaseViewController.m
//  OCTest
//
//  Created by xiaohui on 2018/2/6.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "BaseViewController.h"
#import "Helper.h"
#import <objc/runtime.h>

@interface BaseViewController () <Helper>

@property (strong) Helper *helper;

@end

@implementation BaseViewController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        //在视图控制器的初始化里面初始化一个帮助对象
        _helper = [[Helper alloc] initWithViewController:self];
    }
    return self;
}

//重写控制器中的属性，并把真实的实现委托给helper来完成
//- (void)setProp1:(id)prop1 {
//    self.helper.prop1 = self.prop1;
//}
//
//- (id)prop1 {
//    return self.helper.prop1;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.helper fn1];//helper调用帮助类的方法

    [self fn1];//直接调用帮助类的方法
    [self fn2];//直接调用帮助类的方法

    id temp = self.prop1;
    NSLog(@"self.prop1 = %@",temp);//直接读取属性
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    struct objc_method_description omd = protocol_getMethodDescription(@protocol(Helper), aSelector, NO, YES);
    if (omd.name != NULL) {
        return self.helper;
    }
    return [super forwardingTargetForSelector:aSelector];
}

@end
