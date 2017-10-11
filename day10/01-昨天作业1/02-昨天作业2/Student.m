//
//  Student.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)findHelpForBuy{
    if ([_delegate respondsToSelector:@selector(buySomethingWithMoney)]) {
        [_delegate performSelector:@selector(buySomethingWithMoney)];
    }
}

-(void)findHelpForLearn{
    if ([_delegate respondsToSelector:@selector(learn)]) {
        [_delegate performSelector:@selector(learn)];
    }
}
@end
