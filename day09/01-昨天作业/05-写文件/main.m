//
//  main.m
//  05-写文件
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         写文件
         注意：
         1、文件的后缀不能是.rtf
         2、文件路径中最好不要有中文
         */
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day08/01-昨天作业/05-写文件/File";
        
        //创建读写句柄
        NSFileHandle *writeHandle = [NSFileHandle fileHandleForUpdatingAtPath:path];
        
        //将句柄移动到结尾，这样写数据才是追加
        [writeHandle seekToEndOfFile];
        
        
        
        NSData *data = [@"kaige" dataUsingEncoding:NSUTF8StringEncoding];
        
        
        
        //将数据写入缓存
        [writeHandle writeData:data];
        
        
        //sleep(5);
        
        
        //将数据同步到文件(真正的写到了文件)
        [writeHandle synchronizeFile];
        
        
        
        
        [writeHandle closeFile];
        
    }
    return 0;
}

