//
//  main.m
//  06-午间作业
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFunction.h"

//如果数组和字典中存在汉字，在打印时是打印不出汉字的。

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *dic = [BaseFunction dictionaryFromString:@"(键:abc,值:凯)(键:efg,值:EFG)(键:esfeg,值:EjugeG)"];
        NSLog(@"%@", dic);
        NSLog(@"%@", dic[@"abc"]);
    }
    return 0;
}

