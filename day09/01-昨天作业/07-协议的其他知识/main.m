//
//  main.m
//  07-协议的其他知识
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //
        Calculator *cal1 = [[Calculator alloc] init];
        cal1.ret = 10;
        
        Calculator *cal2 = [[Calculator alloc] init];
        cal2.ret = 20;
        
        Calculator *cal3 = [cal1 sumWithOtherCal:cal2];
        NSLog(@"cal3.ret = %d", cal3.ret);
        NSLog(@"cal1.ret = %d", cal1.ret);
        
//        Calculator *cal4 = [cal3 subWithOtherCal:cal2];
//        NSLog(@"cal4.ret = %d", cal4.ret);
    }
    return 0;
}

