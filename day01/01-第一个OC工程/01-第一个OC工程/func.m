//
//  func.m
//  01-第一个OC工程
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

//实现所包含头文件中的函数
//“”和<>的区别：<>会直接去系统中的头文件中寻找相同名字文件，如果找到了就用，找不到就报错。""会先去自定义库中寻找相同名字的头文件，如果找到了就用，找不到再去系统中查找，如果找到了就用，找不到就报错。

#include "func.h"

void func()
{
    printf("sunck is a good man!\n");
}

