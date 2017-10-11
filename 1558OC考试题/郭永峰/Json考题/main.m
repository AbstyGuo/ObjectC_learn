//
//  main.m
//  Json考题
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analysis.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSFileManager * manager=[NSFileManager defaultManager];
        
        NSString * path =@"/Users/qianfeng/Desktop/test.json";
        Analysis * ana=[[Analysis alloc]init];
        [ana JSONAnalysisFromFile:path];
        
        NSString * path1 =@"/Users/qianfeng/Desktop/1558归档文件/郭永峰";
        [manager createDirectoryAtPath:path1 withIntermediateDirectories:YES attributes:nil error:nil];
        NSString * path2 =@"/Users/qianfeng/Desktop/1558归档文件/郭永峰/guidang.txt";
        
        [NSKeyedArchiver archiveRootObject:ana toFile:path2];

        Analysis * newAna =[NSKeyedUnarchiver unarchiveObjectWithFile:path2];
        NSLog(@"%@",newAna);
    }
    return 0;
}

