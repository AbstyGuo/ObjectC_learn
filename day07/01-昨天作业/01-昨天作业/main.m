//
//  main.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+AddMethod.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithArray:@[@"sunck", @"is", @"a", @"good", @"man"]];
        
        SEL sel = @selector(isSmallWithOther:);
        [array sortUsingSelector:sel];
        NSLog(@"%@", array);
    }
    return 0;
}

