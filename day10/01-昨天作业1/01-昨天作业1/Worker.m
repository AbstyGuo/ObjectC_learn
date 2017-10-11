//
//  Worker.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Worker.h"

@implementation Worker
-(void)findHelp{
    if ([_delegate respondsToSelector:@selector(askMoney)]) {
        [_delegate performSelector:@selector(askMoney)];
    }
}
@end
