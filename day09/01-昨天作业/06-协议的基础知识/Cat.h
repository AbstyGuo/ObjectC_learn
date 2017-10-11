//
//  Cat.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
//1、引入协议
#import "BasePro.h"

//2、引用(遵守)协议
@interface Cat : NSObject <BasePro>
//因为Cat类遵守了BasePro协议，Cat类就相当于有了BasePro协议中方法的定义
//-(void)run;
//-(void)eat;
@end
