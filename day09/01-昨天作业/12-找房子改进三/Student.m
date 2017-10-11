//
//  Student.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Student.h"

@implementation Student

//-(void)setDelegate:(id<StudentDelegate>)delegate{
//    _delegate = delegate;
//}
//-(id<StudentDelegate>)delegate{
//    return _delegate;
//}

-(void)findHelp{
    //[_delegate findHouse];
    //容错处理
    if ([_delegate respondsToSelector:@selector(findHouse)]) {
        [_delegate performSelector:@selector(findHouse)];
    }
}
@end
