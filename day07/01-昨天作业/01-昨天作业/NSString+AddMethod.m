//
//  NSString+AddMethod.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "NSString+AddMethod.h"

@implementation NSString (AddMethod)
-(BOOL)isSmallWithOther:(NSString *)other{
    if ([self compare:other] == NSOrderedAscending) {
        return YES;
    }
    return NO;
}
@end
