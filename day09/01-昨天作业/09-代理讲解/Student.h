//
//  Student.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Broker.h"

@interface Student : NSObject
{
    Broker *_broker;
}
-(void)setBroker:(Broker *)broker;
-(Broker *)broker;

-(void)findHouse;

-(void)findHelp;
@end
