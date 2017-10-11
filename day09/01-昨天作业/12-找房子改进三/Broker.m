//
//  Broker.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Broker.h"

@implementation Broker
-(void)findHouse{
    NSLog(@"经纪人帮学生找房子");
}

//从代理的角度考虑问题
-(void)brokerWork{
    
    //给代理(B类的对象)一个客户(A类的对象)
    Student *stu = [[Student alloc] init];
    
    //将自己设置为客户的代理
    stu.delegate = self;
    
    //帮助学生去找房子
    [stu findHelp];
    
}
@end
