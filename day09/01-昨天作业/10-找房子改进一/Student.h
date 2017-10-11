//
//  Student.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindHousePro.h"
//#import "Broker.h"
//#import "Agent.h"
//#import "SubLessor.h"

@interface Student : NSObject
{
//    Broker *_broker;
//    Agent *_agent;
//    SubLessor *_subLessor;
    id<FindHousePro>_delegate;//可以调用协议中的方法
    //id _delegate;
}
//-(void)setBroker:(Broker *)broker;
//-(Broker *)broker;
-(void)setDelegate:(id<FindHousePro>)delegate;
-(id<FindHousePro>)delegate;
//-(void)setDelegate:(id)delegate;
//-(id)delegate;

-(void)findHelp;
@end
