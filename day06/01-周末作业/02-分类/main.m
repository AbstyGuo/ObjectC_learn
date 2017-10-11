//
//  main.m
//  02-分类
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+AddMethod.h"
//#import "Person.h"
#import "Person+Run.h"
#import "Person+Play.h"
#import "Person+Eat.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
            分类：又称类别
            作用：扩充类的功能
         
         
         扩充类的功能的方式：继承、分类
         
         
         分类的形式
         定义部分：
         @interface 类名 (分类名)
         方法的定义
         @end
         
         
         实现部分：
         @implementation 类名 (分类名)
         方法的实现(定义部分中的方法)
         @end
         
         
         注意：
         1、分类中不能定义成员变量，只能定义方法
         2、分类中不能定义与依赖类(要给扩充功能的那个类)中相同名字的方法，因为这样会覆盖依赖类中的同名方法。
         
         
         具体功能：
         1、扩充类的功能(系统类)
         2、将类的方法进行分类(分为不同的类型)管理(自定义类)
         
         
         
         具体使用流程
         1、创建分类，在分类中添加一些方法
         2、引入分类头文件
         3、调用分类中的方法，调用的形式与调用依赖类中的其他方法一样
         */
        
        
        //给系统类扩充功能
        NSString *str = @"sunck is a good man";
        NSString *newStr = [str fzString];
        NSLog(@"newStr = %@", newStr);
        
        
        
        //自定义类
        Person *per = [[Person alloc] init];
        per.age = 10;
        [per run2];
        [per eat4];
        NSLog(@"%d",per.age);
        
    }
    return 0;
}

