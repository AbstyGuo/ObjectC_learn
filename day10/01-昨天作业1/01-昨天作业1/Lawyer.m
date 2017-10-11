//
//  Lawyer.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer
-(void)askMoney{
    NSLog(@"律师帮工人讨薪");
}
-(void)lawyerWork{
    Worker *worker = [[Worker alloc] init];
    
    worker.delegate = self;
    
    
    [worker findHelp];
}
@end
