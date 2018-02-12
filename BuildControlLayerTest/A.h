//
//  A.h
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/8.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "B.h"

@interface A : NSObject

@property (strong) B *b;//A的外部强持有B
@property id pubProp;

- (void)pubFn;

@end
