//
//  main.m
//  04-读文件
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         读文件
         注意：
         1、文件的后缀不能是.rtf
         2、文件路径中最好不要有中文
         */
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day08/01-昨天作业/04-读文件/File";
        
        
        //创建只读句柄
        NSFileHandle *readHandle = [NSFileHandle fileHandleForReadingAtPath:path];
        
        
        //当文件内容较多时，可以分段读取
        
        //读取20个字节的内容
        NSData *data1 = [readHandle readDataOfLength:20];
        NSString *str1 = [[NSString alloc] initWithData:data1 encoding:NSUTF8StringEncoding];
        NSLog(@"str1 = *%@*", str1);
        
        //再次读取20个字节
        NSData *data2 = [readHandle readDataOfLength:20];
        NSString *str2 = [[NSString alloc] initWithData:data2 encoding:NSUTF8StringEncoding];
        NSLog(@"str2 = *%@*", str2);
        
        
        //再次读取，直接读取到最后
        NSData *data3 = [readHandle readDataToEndOfFile];
        NSString *str3 = [[NSString alloc] initWithData:data3 encoding:NSUTF8StringEncoding];
        NSLog(@"str3 = *%@*", str3);
        
        
        //如果再一次读取，不能读取到任何数据了，因为指针已经指向了字符串的结尾
        
        
        //如果想再次能读取，需要调整句柄的位置
        
        //1、移动到文件的指定位置
        [readHandle seekToFileOffset:5];//0表示文件起始位置
        
        //找到文件偏移量
        unsigned long long offset = [readHandle offsetInFile];
        NSLog(@"offset = %llu", offset);
        
        //2、移动到文件的结尾
        [readHandle seekToEndOfFile];
        
        
        
        NSData *data4 = [readHandle readDataToEndOfFile];
        NSString *str4 = [[NSString alloc] initWithData:data4 encoding:NSUTF8StringEncoding];
        NSLog(@"str4 = *%@*", str4);
        
        
        
        
        //对文件的操作结束之后，一定要关闭文件(销毁句柄)
        [readHandle closeFile];
    }
    return 0;
}

