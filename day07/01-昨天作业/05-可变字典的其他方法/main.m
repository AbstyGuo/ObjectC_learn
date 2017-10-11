//
//  main.m
//  05-可变字典的其他方法
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *dic = @{@"1": @"Beijing", @"2": @"Shanghai", @"3": @"Guangzhou", @"4": @"Shenzheng"};
        
        //增
        NSMutableDictionary *dic1 = [NSMutableDictionary dictionaryWithDictionary:dic];
        //增加一个键值对，如果键不存在为增加，如果键存在则变为更改
        [dic1 setObject:@"changchun" forKey:@"5"];
        //增加多个
        [dic1 addEntriesFromDictionary:@{@"6": @"Changchun", @"7": @"shenyang"}];
        NSLog(@"dic1 = %@", dic1);
        
        
        
        
        
        //删
        NSMutableDictionary *dic2 = [NSMutableDictionary dictionaryWithDictionary:dic1];
        //删除一个键值对
        [dic2 removeObjectForKey:@"7"];
        //删除多个键值对
        [dic2 removeObjectsForKeys:@[@"4", @"6", @"9"]];
        //删除全部
        [dic2 removeAllObjects];
        NSLog(@"dic2 = %@", dic2);
        
        
        
        
        //改
        NSMutableDictionary *dic3 = [NSMutableDictionary dictionaryWithDictionary:dic];
        //1、如果键存在即为改，不存在则变为增加
        [dic3 setObject:@"Haerbin" forKey:@"4"];
        //2、key必须为字符串，如果键存在即为改，不存在则变为增加
        [dic3 setValue:@"Changchun" forKey:@"5"];
        //3、用参数字典将之替换
        [dic3 setDictionary:dic1];
        NSLog(@"dic3 = %@", dic3);
        
        
        
        //查、遍历
        //详情请见《03-不可变字典的其他方法》中的遍历部分
        
    }
    return 0;
}

 /*
 实现方法，将一个描述字典结构的字符串，转成一个真正的字典。(20分)
 传入:@"(键:abc,值:ABC)(键:efg,值:EFG)(键:esfeg,值:EjugeG)"
 返回:@{@"abc":@"ABC", @"efg":@"EFG"}
 
 
 */
//- (NSDictionary *)dictionaryFromString:(NSString *)str;

