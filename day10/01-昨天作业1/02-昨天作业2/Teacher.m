//
//  Teacher.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
-(void)buySomethingWithMoney{
    NSLog(@"老师替学生花钱");
}
-(void)learn{
    NSLog(@"老师给学生讲课");
}
-(void)accompanyGirlForMovie{
    NSLog(@"陪朋友的女朋友看电影");
}

-(void)teacherWorkForBuy{
    Student *stu = [[Student alloc] init];
    
    stu.delegate = self;
    
    [stu findHelpForBuy];
}
-(void)teacherWorkForLearn{
    Student *stu = [[Student alloc] init];
    
    stu.delegate = self;
    
    [stu findHelpForLearn];
}

-(void)teacherWorkForMovie{
    Friend *fri = [[Friend alloc] init];
    
    fri.delegate = self;
    
    [fri findHelp];
}


-(void)findHelp{
    if ([_delegate respondsToSelector:@selector(askMoeny)]) {
        [_delegate performSelector:@selector(askMoeny)];
    }
}

@end
