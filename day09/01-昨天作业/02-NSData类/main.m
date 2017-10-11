//
//  main.m
//  02-NSData类
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //NSData：一种数据类型，存储的是二进制的数据。
        //原因：在传输数据时，一般传输的是二进制文件
        
        
        //将文件中的数据读取出来
        NSString *info = [NSString stringWithContentsOfFile:@"/Users/qianfeng/Desktop/ios1558/day08/01-昨天作业/02-NSData类/File" encoding:NSUTF8StringEncoding error:nil];
        //将字符串转为NSData
        NSData *data = [info dataUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"data = %@", data);
        
        
        
        //NSData转为字符串
        NSString *newInfo = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"newInfo = %@", newInfo);
        
        
        
        
    }
    return 0;
}

