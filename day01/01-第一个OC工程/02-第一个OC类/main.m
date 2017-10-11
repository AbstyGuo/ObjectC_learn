//
//  main.m
//  02-第一个OC类
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

/**
 创建类：
 类名：
 属性(成员变量)：
 行为(方法、功能)：
 
 
 
 人：
 类名：Person    首字母大写
 属性(成员变量)： 身高(_height)    体重(_weight)  下划线开头
 行为(方法、功能)：吃(eat)   玩(play)
 
 
 车：
 类名：Car
 属性(成员变量)： 颜色(_color)
 行为(方法、功能)：跑(run)
 
 
 手机
 类名：Phone
 属性(成员变量)：_ram    _rom
 行为(方法、功能)：call
 
 类的创建分：定义部分和实现部分
 
 */


#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Phone.h"


////书签，标记书签，代码层次结构清晰
//#pragma mark 人类
////定义部分:类的定义(定义出一个类型)
////         类名      NSObject作用：使类具有创建对象的能力
//@interface Person : NSObject
//{
//    //大括号里面写属性的定义
//    int _height;//定义属性时不能赋初值
//    int _weight;//属性的定义只能写在大阔号里面
//}
////大括号结束到@end之间写方法的定义
//@end//标志着定义部分的结束，不能省略
//
//
////实现部分：实现对应类的定义部分中定义的方法
////               类名
//@implementation Person//虽然实现部分什么都没有，但是也不能省略实现部分
////类定义部分中定义的方法的实现
//@end//标志着实现部分的结束，不能省略



//#pragma mark 车类
//@interface Car : NSObject
//{
//    int _color;
//}
//@end
//@implementation Car
//
//@end
//
//
//
//#pragma mark 电话类
//@interface Phone : NSObject
//{
//    int _rom;
//}
//@end
//@implementation Phone
//
//@end



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
    }
    return 0;
}

