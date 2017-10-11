//
//  main.m
//  02-字典(不可变字典)
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         字典：保存数据的一种格式
         不可变字典：指针的指向可以改变，但是指向的内容不可以改变
         可变字典：指针的指向可以改变，并且指向的内容也可以改变
         
         详情：通过键(key)值(value)对的形式来存储数据
         注意：
         1、value可以相同，key必须唯一
         2、字典保存的是对象类型
         3、key一般是字符串类型
         4、字典中的多个键值对之间是没有顺序的
         */
        
        
        //不可变字典
        
        //创建
        
        
        
        //空字典
        NSDictionary *dic1 = [[NSDictionary alloc] init];
        NSDictionary *dic2 = [NSDictionary dictionary];
        
        
        //简单方式创建字典，将nil隐藏了
        NSDictionary *dic3 = @{@"1": @"Beijing", @"2": @"Shanghai", @"3": @"Guangzhou", @"4": @"Shenzheng"};
        NSLog(@"dic3 = %@", dic3);
        
        
        //通过对象方法
        //1、nil不能省略，标志着字典的结尾
        NSDictionary *dic4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Beijing", @"1", @"Shanghai", @"2", @"Guangzhou", @"3", @"Shenzheng", @"4", nil];
        //2、value数组与key数组要一一对应
        NSDictionary *dic5 = [[NSDictionary alloc] initWithObjects:@[@"Beijing", @"Shanghai", @"Guangzhou", @"Shenzheng"] forKeys:@[@"1", @"2", @"3", @"4"]];
        //3、根据已经存在的字典创建新字典
        NSDictionary *dic6 = [[NSDictionary alloc] initWithDictionary:dic3];
        
        
        
        //通过类方法
        //1
        NSDictionary *dic7 = [NSDictionary dictionaryWithObjectsAndKeys:@"Beijing", @"1", @"Shanghai", @"2", @"Guangzhou", @"3", @"Shenzheng", @"4", nil];
        //2
        NSDictionary *dic8 = [NSDictionary dictionaryWithObjects:@[@"Beijing", @"Shanghai", @"Guangzhou", @"Shenzheng"] forKeys:@[@"1", @"2", @"3", @"4"]];
        //3
        NSDictionary *dic9 = [NSDictionary dictionaryWithDictionary:dic3];
        
    }
    return 0;
}

