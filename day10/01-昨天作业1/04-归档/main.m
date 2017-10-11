//
//  main.m
//  04-归档
//
//  Created by qianfeng on 15-11-6.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cat.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         归档：保存数据的一种方法，在进行归档的时候，会将数据保存在一个文件中
        
         归档存储的属性级别
         
         
         归档的要求
         1、在进行归档时，存储的是对象类型
         2、归档的对象要遵守NSCoding协议
         
         可以进行归档的对象：系统类的对象、自定义类的对象
         */
        
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day10/sunck";
        
        
        //自定义类的对象归档
        Person *per = [[Person alloc] init];
        per.name = @"sunck";
        per.age  = 19;
        
        //归档
        //参数1：是要归档的对象
        //参数2：要存储数据的文件，如果文件不存在，会自动创建
        [NSKeyedArchiver archiveRootObject:per toFile:path];
        
        
        //解档
        Person *per1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"per1.name = %@", per1.name);
        NSLog(@"per1.age  = %d", per1.age);
        //per和per1不是同一个对象，解档时会创建一个新的对象，将文件中的对象的值存到新对象的属性中
        NSLog(@"per  = %p", per);
        NSLog(@"per1 = %p", per1);
        
        
        
        
        
        //对系统类的对象进行归档
        //1、进行归档的对象要遵守NSCoding协议
        //2、如果归档的是数组或者字典等，那么其中的元素也要遵守NSCoding协议
        NSString *path1 = @"/Users/qianfeng/Desktop/ios1558/day10/kaige";
        Cat *cat = [[Cat alloc] init];//不遵守NSCoding协议
        NSArray *array = @[@"1", @"2", @"3", per/*, cat*/];
        
        //归档
        [NSKeyedArchiver archiveRootObject:array toFile:path1];
        
        
        //解档
        NSArray *array1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path1];
        NSLog(@"array1 = %@", array1);
        NSLog(@"array1[3].age = %@", [array1[3] name]);
        
    }
    return 0;
}

