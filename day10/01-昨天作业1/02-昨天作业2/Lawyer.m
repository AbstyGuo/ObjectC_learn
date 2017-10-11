//
//  Lawyer.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer
-(void)askMoeny{
    NSLog(@"帮老师讨薪");
}
-(void)lawyerWork{
    Teacher *tea = [[Teacher alloc] init];
    
    tea.delegate = self;
    
    [tea findHelp];
}
@end
