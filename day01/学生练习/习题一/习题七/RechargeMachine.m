//
//  RechargeMachine.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "RechargeMachine.h"

@implementation RechargeMachine

-(void)setMoney:(int)money{
    _money = money;
}
-(int)money{
    return _money;
}

-(void)buyTicket{
    NSLog(@"购票成功");
}

-(void)recharge{
    NSLog(@"请输入充值金额(20,50,100)");
    getchar();
    scanf("%i",&_money);
    NSLog(@"充值成功,成功充值%i",_money);
}
@end
