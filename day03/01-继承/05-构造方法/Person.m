//
//  Person.m
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person

/**重写init
 1、完成基本功能
 2、完成自己独有的功能
 */

//id可以指向任何的对象类型
//-(id)init{
//    //1、完成对当前对象的初始化
//    self = [super init];
//    
//    //2、判断当前对象指针是否不为空，如果不为空就可以进行自定义功能(赋值)
//    if (self) {
//        //3、实现自定义功能
//        self->_name = @"Tom";
//        self->_age  = 1;
//        self->_height = 40;
//    }
//    //4、返回自己
//    return self;
//}
-(id)init{
    if (self = [super init]) {
        self->_name = @"Tom";
        self->_age  = 1;
        self->_height = 40;
    }
    return self;
}
//构造方法




-(id)initWithName:(NSString *)name andAge:(int)age andHeight:(int)height{
    if (self = [super init]) {
        _name = name;
        _age  = age;
        _height = height;
    }
    return self;
}



-(NSString *)description{
    NSString *string = [NSString stringWithFormat:@"姓名:%@  年龄:%d  身高:%d", _name, _age, _height];
    return string;
}
@end
