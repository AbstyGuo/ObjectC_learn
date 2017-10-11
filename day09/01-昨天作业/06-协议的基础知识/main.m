//
//  main.m
//  06-协议的基础知识
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"



int main(int argc, const char * argv[])
{
   
    @autoreleasepool {
        
        /**
         协议
         定义：一组方法的列表
         特点：只有方法的定义，没有方法的实现。实现写在遵守了协议的类的.m文件中的实现部分中
         
         
         格式
         @protocol 协议名
         方法的列表
         @end
         
         
         使用协议：
         1、引入协议
         2、引用(遵守)协议
         3、实现协议中的方法
         
         
         
         
         协议中方法的分类
         @optional:如果用optional修饰，那么方法是可选实现的
         @required:如果用requiredx修饰，那么方法是必须实现的(默认类型)。如果不实现会报警告
         
         
         
         
         为什么用协议？
         协议提供统一的接口，谁要想实现这个功能就遵守协议即可
         
         
         
         继承                            协议
   共同点：提供一个统一的接口
   不同点：
         方法只能用于本类和子类中            只要遵守了协议就可以使用
         父类中的方法自己要实现              只有方法的定义
         必须单独创建一个类                 不需要创建类
         单继承                           多遵守
         
         
         
         
         协议可以一个或者多个遵守协议
         类可以一个或者多个遵守协议
         
         协议可以被一个或者多个协议遵守
         协议可以被一个或者多个类遵守
         
         
         
         午间作业
         动物开大会
         猫穿黑色西装
         狗穿白色西装
         鸡穿蓝色西装
         鸭穿红色西装
         */
        
        
        Cat *cat = [[Cat alloc] init];
        [cat eat];
        
    }
    return 0;
}

