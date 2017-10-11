//
//  Lawyer.h
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"

@interface Lawyer : NSObject <TeacherDelegate>
-(void)lawyerWork;
@end
