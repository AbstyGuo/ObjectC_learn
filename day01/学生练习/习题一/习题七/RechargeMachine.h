//
//  RechargeMachine.h
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RechargeMachine : NSObject
{
    int _money;//充的钱数
    int _select;
}

-(void)setMoney:(int)money;
-(int)money;

//买票
-(void)buyTicket;
//充值
-(void)recharge;
@end
