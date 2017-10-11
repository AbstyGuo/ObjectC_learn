//
//  NSString+AddMethod.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "NSString+AddMethod.h"

@implementation NSString (AddMethod)
-(NSString *)fzString{
    NSMutableString *str = [[NSMutableString alloc] init];
    
    for (int i = (int)[self length] - 1; i >= 0; i--) {
        [str appendFormat:@"%c", [self characterAtIndex:i]];
    }
    return str;
}
@end
