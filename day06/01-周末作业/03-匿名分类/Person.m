//
//  Person.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@interface Person ()
{
    int _height;
}
@property (nonatomic, assign) int weight;

-(void)eat;
@end

@implementation Person
-(void)run{
    [self eat];
    [self setWeight:20];
    NSLog(@"run");
}

-(void)eat{
    NSLog(@"eat");
}
@end
