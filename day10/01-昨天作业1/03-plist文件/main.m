//
//  main.m
//  03-plist文件
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#define FLAG 0

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         plist文件：组装的是数组、字典、NSNumber、NSString等类型的数据，是一个属性级别的存储方式
         
         注意：解析plist文件时，将数据放入字典还是数组取决于plist文件的最外层
         */
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day10/info.plist";
        
        
        //写plist文件
#if FLAG
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        
        [dic setObject:@"sunck" forKey:@"name"];
        [dic setObject:[NSNumber numberWithInt:18] forKey:@"age"];
        [dic setObject:[NSNumber numberWithBool:YES] forKey:@"sex"];
        [dic setObject:@[@"power", @"money"] forKey:@"hobby"];
        [dic setObject:@{@"height": @"175", @"weight": @"70"} forKey:@"trait"];
        
        //如果文件不存在会自动创建
        //如果文件存在则会覆盖
        //参数2：当为YES时，如果写入的时候出现错误，会自动将已经写入的内容清除。
        [dic writeToFile:path atomically:YES];
#else
        //读plist文件
        NSDictionary *readDic = [NSDictionary dictionaryWithContentsOfFile:path];
        NSLog(@"readDic = %@", readDic);
        
#endif
    }
    return 0;
}

