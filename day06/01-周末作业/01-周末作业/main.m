//
//  main.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PathManager.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        [PathManager objcIdentifierFromCppIdentifier:@"qian_feng_hu_lian"];
        
        NSString *s = [PathManager resultFromExpression:@"-8*-9"];
        NSLog(@"s = %@", s);
        
    }
    return 0;
}

