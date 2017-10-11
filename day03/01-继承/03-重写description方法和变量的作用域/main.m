//
//  main.m
//  03-重写description方法和变量的作用域
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *per = [Person new];
        per.name = @"sunck";
        per.age  = 18;
        per.height = 175;
        per.weight = 70;
        
        NSLog(@"per = %@", per);//用description方法的返回值替换%@这个占位符
        NSLog(@"姓名:%@ 年龄:%d 身高:%d 体重:%d", per.name, per.age, per.height, per.weight);
        
        
    }
    return 0;
}

