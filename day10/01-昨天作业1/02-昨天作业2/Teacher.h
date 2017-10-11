//
//  Teacher.h
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Friend.h"

@protocol TeacherDelegate <NSObject>
-(void)askMoeny;
@end

@interface Teacher : NSObject <StudentDelegate, FriendDelegate>

@property (nonatomic, assign) id<TeacherDelegate>delegate;

-(void)teacherWorkForBuy;
-(void)teacherWorkForLearn;

-(void)teacherWorkForMovie;

-(void)findHelp;

@end
