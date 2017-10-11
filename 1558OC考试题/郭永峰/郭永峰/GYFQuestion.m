//
//  GYFQuestion.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "GYFQuestion.h"

@implementation GYFQuestion

-(NSInteger)countOfSubstring:(NSString *)substring inString:(NSString *)s
{
    NSMutableString * str =[NSMutableString stringWithString:s];
    NSInteger a=0;
    for (int i=0; i<[str length]; i++) {
        NSRange range =[str rangeOfString:substring];
        if (range.length!=0) {
            a++;
            [str deleteCharactersInRange:NSMakeRange(range.location, 1)];
        }
    }
    return a;
}

-(NSDate *)dateFromString:(NSString *)dateString{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSRange range =[dateString rangeOfString:@":"];
    if (range.length==0)
    {
        formatter.dateFormat=@"yyyy-MM-dd";
    }else
    {
        NSRange range1 =[dateString rangeOfString:@"."];
        if (range1.length==0) {
            formatter.dateFormat=@"yyyy-MM-dd HH:mm:ss";
        }else
            formatter.dateFormat=@"yyyy-MM-dd HH:mm:ss.SSS";
    }
    NSDate * date =[formatter dateFromString:dateString];
    return date;
}

@end
