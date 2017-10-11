//
//  main.m
//  04-字典(可变字典)
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //可变字典是不可变字典的子类
        
        //创建
        
        //创建空字典
        NSMutableDictionary *dic01 = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *dic02 = [[NSMutableDictionary alloc] initWithCapacity:10];
        NSMutableDictionary *dic03 = [NSMutableDictionary dictionary];
        
        
        //注意：可变字典不能用简单方式创建。
        NSDictionary *dic = @{@"1": @"Beijing", @"2": @"Shanghai", @"3": @"Guangzhou", @"4": @"Shenzheng"};
        
        
        
        //通过对象方法
        //1、nil不能省略，标志着字典的结尾
        NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"Beijing", @"1", @"Shanghai", @"2", @"Guangzhou", @"3", @"Shenzheng", @"4", nil];
        //2、value数组与key数组要一一对应
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] initWithObjects:@[@"Beijing", @"Shanghai", @"Guangzhou", @"Shenzheng"] forKeys:@[@"1", @"2", @"3", @"4"]];
        //3、根据已经存在的字典创建新字典
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] initWithDictionary:dic];
        
        
        
        //通过类方法
        //1
        NSMutableDictionary *dic7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Beijing", @"1", @"Shanghai", @"2", @"Guangzhou", @"3", @"Shenzheng", @"4", nil];
        //2
        NSMutableDictionary *dic8 = [NSMutableDictionary dictionaryWithObjects:@[@"Beijing", @"Shanghai", @"Guangzhou", @"Shenzheng"] forKeys:@[@"1", @"2", @"3", @"4"]];
        //3
        NSMutableDictionary *dic9 = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        
    }
    return 0;
}

