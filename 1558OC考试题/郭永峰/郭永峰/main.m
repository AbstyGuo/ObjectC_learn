//
//  main.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYFQuestion.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        GYFQuestion * gyf =[[GYFQuestion alloc]init];
        
        NSLog(@"****************第一题开始******************");
        NSString * s =@"ababasunck abais";
        NSString * substring =@"aba";
        NSInteger x =[gyf countOfSubstring:substring inString:s];
        NSLog(@"包含子串数为%lu",x);
        NSLog(@"****************第一题结束******************");
        
        
        NSLog(@"****************第二题开始******************");
        NSString * dateString =@"2015-11-13";
        NSDate * date=[gyf dateFromString:dateString];
        NSLog(@"%@",date);
        NSLog(@"****************第二题结束******************");
        
    }
    return 0;
}

