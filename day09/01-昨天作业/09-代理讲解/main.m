//
//  main.m
//  09-代理讲解
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Broker.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         代理：也叫委托，是一种设计模式
         
         有两个类，A类和B类，A类想做一件事情，但是自己却不想去做，让B类去做(实现)，这就是代理
         
         B类是不固定，只要符合一个条件就可以是B类。
         
         条件：能帮A类完成这件事
         
         
         
         学生找房子
         A类：学生
         B类：经纪人、中介、二房东
         */
        
        
        Student *stu = [[Student alloc] init];
        //[stu findHouse];
        
        Broker *bro = [[Broker alloc] init];
        
        //学生拥有了经纪人
        stu.broker = bro;
        
        //学生拜托经纪人去找房子
        [stu findHelp];
        
    }
    return 0;
}

