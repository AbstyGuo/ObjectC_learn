//
//  Broker.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Broker : NSObject <StudentDelegate>

-(void)brokerWork;

@end
