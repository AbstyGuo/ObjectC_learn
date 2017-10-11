//
//  Person.m
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person


//description是一个描述对象的方法，当我们对对象使用%@打印时，内部其实就是调用的description方法
-(NSString *)description{
    NSString *string = [NSString stringWithFormat:@"姓名:%@ 年龄:%d 身高:%d 体重:%d", _name, _age, _height, _weight];
    return string;
}
//description的作用：当一个对象的属性非常多时，并且都需要打印，就要重写description方法，达到简化代码的目的

@end
