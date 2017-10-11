//
//  Student.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)findHouse{
    NSLog(@"学生自己找房子");
}

-(void)setBroker:(Broker *)broker{
    _broker = broker;
}
-(Broker *)broker{
    return _broker;
}

-(void)findHelp{
    [_broker findHouse];
}
@end
