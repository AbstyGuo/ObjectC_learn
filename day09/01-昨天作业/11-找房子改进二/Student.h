//
//  Student.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindHousePro.h"

@interface Student : NSObject
{
    id<FindHousePro>_delegate;
}
-(void)setDelegate:(id<FindHousePro>)delegate;
-(id<FindHousePro>)delegate;


-(void)findHelp;
@end
