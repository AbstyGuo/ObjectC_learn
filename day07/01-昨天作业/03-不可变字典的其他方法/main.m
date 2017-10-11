//
//  main.m
//  03-不可变字典的其他方法
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //取值
        NSDictionary *dic01 = @{@"1": @"Beijing", @"2": @"Shanghai", @"3": @"Guangzhou", @"4": @"Shenzheng", @"5": @"Beijing"};
        //取一个值
        NSString *str01 = [dic01 objectForKey:@"2"];
        NSLog(@"str01 = %@", str01);
        //简单方式取一个值
        NSString *str02 = dic01[@"3"];//字典名[key]
        NSLog(@"str02 = %@", str02);
        //取多个值
        //当参数1数组中的元素在字典中没有对应的key,那么结果数组中的元素用参数2对象去占位，参数2不能为nil
        NSArray *array01 = [dic01 objectsForKeys:@[@"1", @"6", @"2"] notFoundMarker:@"NSNOTFOUND"];
        NSLog(@"array01 = %@", array01);
        //取所有的key
        NSArray *array02 = [dic01 allKeys];
        NSLog(@"array02 = %@", array02);
        //取所有的value
        NSArray *array03 = [dic01 allValues];
        NSLog(@"array03 = %@", array03);
        //取出相同value的所有key
        NSArray *array04 = [dic01 allKeysForObject:@"Beijing"];
        NSLog(@"array04 = %@", array04);
        
        
        //求键值对个数
        NSUInteger count = [dic01 count];
        NSLog(@"count = %lu", count);
        
        
        //判断两个字典是否相等
        BOOL isE = [dic01 isEqualToDictionary:@{@"10": @"Haidian"}];
        
        
        //遍历
        //1、要求字典中的key要有某种规律可言
        for (int i = 1; i < 6; i++) {
            NSString *key = [NSString stringWithFormat:@"%d", i];
            
            NSString *value = [dic01 objectForKey:key];
            NSLog(@"dic01[%@] = %@", key, value);
        }
        //2、快速遍历
        //注意：in的后面是要遍历的集合(数组或者字典)，就字典而言in的前面是字典中的键(key)
        for (NSString *key in dic01) {
            NSString *value = [dic01 objectForKey:key];
            NSLog(@"2-dic01[%@] = %@", key, value);
        }
        //3、枚举遍历
        NSEnumerator *merator = [dic01 keyEnumerator];
        //NSLog(@"merator = %@", merator);
        id keyString = nil;
        //nextObject取出当前的key
        while (keyString = [merator nextObject]) {
            NSString *valueString = [dic01 objectForKey:keyString];
            NSLog(@"3-dic01[%@] = %@", keyString, valueString);
        }
    }
    return 0;
}

