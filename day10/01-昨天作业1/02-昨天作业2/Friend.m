//
//  Friend.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import "Friend.h"

@implementation Friend
-(void)findHelp{
    if ([_delegate respondsToSelector:@selector(accompanyGirlForMovie)]) {
        [_delegate performSelector:@selector(accompanyGirlForMovie)];
    }
}
@end
