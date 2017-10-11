//
//  main.m
//  02-字符串简介
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //C语言中的字符串表示方式
        char *str = "sunck is a good man";
        //write
        //char *str2 = "sunck is a nice man";
        
        
        
        //OC中的字符串用一个类来表示      NSString
        
        //最简单的方式表示字符串
        NSString *string = @"sunck is a nice man凯";//@""
        
        
        
        //格式化字符串
        //printf("slfiejlisfje%d%%c", );
        NSString *string1 = [NSString stringWithFormat:@"sunck is a handsome man!He is %d", 18];//sunck is a handsome man!He is 18
        
        //打印字符串对象  %@是用来打印对象的
        NSLog(@"string1 = %@", string1);
        
        
        //求长度
        char *a = "凯";
        NSLog(@"%lu", strlen(a));//按字节来计算
        
        
        //OC中计算字符串长度，是各国字符为单位
        NSLog(@"%lu", [string length]);
        
        
    }
    return 0;
}

