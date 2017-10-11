//
//  Person.h
//  01-昨天作业1
//
//  Created by qianfeng on 15-11-6.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;

@end
