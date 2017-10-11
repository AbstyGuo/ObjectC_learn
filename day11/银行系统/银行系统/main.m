//
//  main.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BandView.h"
#import "Band.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BandView *bandView = [[BandView alloc] init];
        if (![bandView loginFun]) {
            NSLog(@"账号密码输入有误");
            sleep(2);
            return -1;
        }
        NSLog(@"登录成功!正在登录……");
        sleep(2);
        
        Band *band = [Band defaultBand];
        bandView.delegate = band;//建立代理关系
        
        while (1) {
            [bandView functionView];//显示功能界面
            
            char operate[10] = "";
            NSLog(@"请输入操作");
            scanf("%s", operate);
            
            
            NSUInteger flag = [BandView flagWithOperate:[NSString stringWithUTF8String:operate]];
            
            switch (flag) {
                case a:
                    [bandView willOpenCard];
                    break;
                case b:
                    [bandView willSearchMoney];
                    break;
                case c:
                    NSLog(@"c");
                    break;
                case d:
                    NSLog(@"d");
                    break;
                case e:
                    NSLog(@"e");
                    break;
                case f:
                    NSLog(@"f");
                    break;
                case g:
                    NSLog(@"g");
                    break;
                case h:
                    NSLog(@"h");
                    break;
                case i:
                    NSLog(@"i");
                    break;
                case j:
                    NSLog(@"j");
                    break;
                case k:
                    
                    [NSKeyedArchiver archiveRootObject:band toFile:@"/Users/qianfeng/Desktop/ios1558/day11/allUers"];
                    
                    return 0;
                default:
                    break;
            }
            sleep(2);
        }
        
        
    }
    return 0;
}

