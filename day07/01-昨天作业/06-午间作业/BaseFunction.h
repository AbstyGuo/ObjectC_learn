//
//  BaseFunction.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseFunction : NSObject
/*
 实现方法，将一个描述字典结构的字符串，转成一个真正的字典。(20分)
 传入:@"(键:abc,值:ABC)(键:efg,值:EFG)(键:esfeg,值:EjugeG)"
 返回:@{@"abc":@"ABC", @"efg":@"EFG"}
 
 
 */
+(NSDictionary *)dictionaryFromString:(NSString *)str;
@end
