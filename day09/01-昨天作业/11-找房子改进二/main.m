//
//  main.m
//  11-找房子改进二
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Broker.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Broker *bro = [[Broker alloc] init];
        
        [bro brokerWork];
        
        
    }
    return 0;
}

