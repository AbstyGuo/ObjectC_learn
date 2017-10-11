//
//  main.m
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *per = [Person new];
        
        per.age = 18;
        NSLog(@"per.age = %d", [per age]);
        [per run];
        
        
        
        Student *stu = [Student new];
        [stu run];
        [stu setAge:10];
        NSLog(@"stu.age = %d", [stu age]);
        [stu play];
    }
    return 0;
}

