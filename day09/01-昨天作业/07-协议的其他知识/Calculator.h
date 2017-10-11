//
//  Calculator.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SumPro.h"
#import "SubPro.h"

//                                多个协议用逗号分隔
@interface Calculator : NSObject <SumPro, SubPro>
@property (nonatomic, assign) int ret;

//-(Calculator *)sumWithOtherCal:(Calculator *)cal;
//-(Calculator *)subWithOtherCal:(Calculator *)cal;
@end
