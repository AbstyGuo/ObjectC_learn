//
//  Student.h
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StudentDelegate <NSObject>
-(void)buySomethingWithMoney;
-(void)learn;
@end

@interface Student : NSObject
@property (nonatomic, assign) id<StudentDelegate>delegate;

-(void)findHelpForBuy;
-(void)findHelpForLearn;

@end
