//
//  NSArray+SumFromArray.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "NSArray+SumFromArray.h"

@implementation NSArray (SumFromArray)

-(NSUInteger)sumWithElement{
    NSUInteger sum =0;
    for (NSString * str in self) {
        sum+=[str integerValue];
    }
    return sum;
}

@end
