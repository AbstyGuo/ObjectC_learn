//
//  main.m
//  10-找房子改进一
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Broker.h"
#import "SubLessor.h"
#import "Agent.h"
#import "FindHousePro.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu = [[Student alloc] init];
        
        
        
        Broker *bro = [[Broker alloc] init];
        Agent *age = [[Agent alloc] init];
        SubLessor *sub = [[SubLessor alloc] init];
        
        
        stu.delegate = sub;
        [stu findHelp];

        
    }
    return 0;
}

