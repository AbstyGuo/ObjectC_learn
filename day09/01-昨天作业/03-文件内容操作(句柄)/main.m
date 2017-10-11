//
//  main.m
//  03-文件内容操作(句柄)
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //文件内容操作：只读、只写、读写
        
        //NSFileHandle类(这个类的对象就可以称之为句柄)
        //作用：操作文件的内容
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day08/01-昨天作业/03-文件内容操作(句柄)/File";
        
        
        //只读句柄
        //通过这个对象只能从File文件中读数据，不能向File文件中写数据
        NSFileHandle *onlyReadHandle = [NSFileHandle fileHandleForReadingAtPath:path];
        
        
        
        //只写句柄
        //通过这个对象不能从File文件中读数据，只能向File文件中写数据
        NSFileHandle *onlyWriteHandle = [NSFileHandle fileHandleForWritingAtPath:path];
        
        
        
        
        //读写句柄
        //通过这个对象能从File文件中读数据，也能向File文件中写数据
        NSFileHandle *readWriteHandle = [NSFileHandle fileHandleForUpdatingAtPath:path];
        
    }
    return 0;
}

