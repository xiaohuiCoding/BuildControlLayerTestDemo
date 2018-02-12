//
//  Safe.h
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/8.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Safe : NSObject

//外部只可读不可写
@property (nonatomic, copy, readonly) NSString *prop1;
@property (nonatomic, assign, readonly) NSInteger prop2;

@end
