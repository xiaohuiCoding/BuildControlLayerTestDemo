//
//  Helper.h
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/7.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Helper

//将接口的属性和方法都设置为可选
@optional

@property id prop1;
@property id prop2;

- (void)fn1;
- (void)fn2;

@end

@interface Helper : NSObject <Helper>

@property id prop1;
@property id prop2;

//- (void)fn1;
//- (void)fn2;

//扩展的方法中需要用到对象的实例属性
- (instancetype)initWithViewController:(UIViewController *)vc;

@end
