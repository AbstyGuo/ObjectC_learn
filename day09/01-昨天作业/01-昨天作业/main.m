//
//  main.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *manager = [NSFileManager defaultManager];
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day08/image";
        
        NSArray *array = [manager contentsOfDirectoryAtPath:path error:nil];

        for (NSString *name in array) {
            NSString *ext = [name pathExtension];

            [manager createDirectoryAtPath:[path stringByAppendingPathComponent:ext] withIntermediateDirectories:YES attributes:nil error:nil];
            [manager moveItemAtPath:[path stringByAppendingPathComponent:name] toPath:[[path stringByAppendingPathComponent:ext] stringByAppendingPathComponent:name] error:nil];            
        }
    }
    return 0;
}

