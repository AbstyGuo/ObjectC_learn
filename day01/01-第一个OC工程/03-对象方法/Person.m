//
//  Person.m
//  01-第一个OC工程
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)run{
    NSLog(@"跑");
}
-(int)play{
    NSLog(@"玩");
    return 0;
}

-(void)eatApple:(int)num{
    NSLog(@"吃%d个苹果", num);
}
-(void)eatBanana:(int)num1 andOrange:(int)num2{
    NSLog(@"吃%d个香蕉和%d个橘子", num1, num2);
}
@end
