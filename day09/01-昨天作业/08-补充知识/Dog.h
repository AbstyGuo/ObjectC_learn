//
//  Dog.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePro.h"

@interface Dog : NSObject <BasePro>
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int height;
@property (nonatomic, assign) int weight;
@end
