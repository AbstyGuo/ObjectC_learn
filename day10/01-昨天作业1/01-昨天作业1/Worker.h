//
//  Worker.h
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WorkerDelegate <NSObject>
-(void)askMoney;
@end

@interface Worker : NSObject

@property (nonatomic, assign) id<WorkerDelegate>delegate;

-(void)findHelp;

@end
