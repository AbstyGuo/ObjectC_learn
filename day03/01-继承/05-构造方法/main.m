//
//  main.m
//  05-构造方法
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *per = [Person new];
        /**new方法干的三件事
         1、开辟空间      alloc
         2、初始化        init
         3、返回地址
         */
        
        //new = alloc + init
        Person *per1 = [Person alloc];//混沌对象
        Person *per2 = [per1 init];
        
        //注意：嵌套调用，在调用方法时，从里到外的调用
        Person *per3 = [[Person alloc] init];
        
        
        //为什么要用allco+init呢？
        //因为我们可以重写init方法，在初始化的同时完成对成员变量的赋值
        Person *per4 = [[Person alloc] init];
        NSLog(@"per4 = %@", per4);
        
        
        
        Person *per5 = [[Person alloc] initWithName:@"Hanmeimei" andAge:1 andHeight:50];
        
        Person *per6 = [[Person alloc] initWithName:@"LiLei" andAge:1 andHeight:55];
        
        NSLog(@"per5 = %@", per5);
        NSLog(@"per6 = %@", per6);
        
    }
    return 0;
}

