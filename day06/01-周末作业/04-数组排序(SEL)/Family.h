//
//  Family.h
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
@class Person;
//@class 类名
//作用：用@class引入一个类，程序只读取类的类名，不会读取内容，如果当前类要使用引入类中的内容，需要在当前类的.m文件中重新包含类的头文件
//好处：节省内存，提高效率，防止循环引用

@interface Family : NSObject
{
    NSMutableArray *_perArray;
}
-(NSMutableArray *)perArray;


-(void)addPersonToArray:(Person *)person;

@end
