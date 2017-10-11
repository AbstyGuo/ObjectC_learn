//
//  main.m
//  习题七
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RechargeMachine.h"
int main(int argc, const char * argv[])
{

    RechargeMachine *recharge = [RechargeMachine new];
    int select = 0;
    NSLog(@"请选择购票(0)还是充值(1)");
    scanf("%i",&select);

    if (select == 0) {
        [recharge buyTicket];
    }else{
        [recharge recharge];
    }

    return 0;
}

