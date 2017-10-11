//
//  Student.m
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)play{
    NSLog(@"age = %d", _age);
    NSLog(@"玩");

 }

//方法调用的原理：首先在本类中寻找同名方法，如果找到了就用了。如果没有找到，会去直接父类中寻找同名方法，如果找到了就用了。如果没有找到，再去上一级父类中寻找，如果找到了就用了。找不到就报错，说明没有这个方法。

//当子类中与父类中方法同名时，会优先执行子类中的方法，将这个过程称之为“重写”
-(void)run{
    [super run];//调用父类中的run方法
    //[super eat];
    
    NSLog(@"学生跑");
}
//重写的目的：为了在父类同名方法中完成属于自己独有的功能


//super：代表的是父类的对象或者父类的类名
//super应用场景：在子类中调用父类中同名方法

@end
