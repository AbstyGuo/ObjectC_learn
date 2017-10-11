//
//  main.m
//  03-json模板
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analysis.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Analysis *ana = [[Analysis alloc] init];
        [ana JSONAnalysisFromFile:@"/Users/qianfeng/Desktop/ios1558/day12/json相关/Json文件/cdJson.json"];
        
        //归档
        [NSKeyedArchiver archiveRootObject:ana toFile:@"/Users/qianfeng/Desktop/ios1558/day12/a.txt"];
        
        Analysis *newAna = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/qianfeng/Desktop/ios1558/day12/a.txt"];
        
        NSLog(@"%@", newAna);
    }
    return 0;
}

