//
//  BasePro.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 这是一个协议
 
 协议名的后面<>里面是NSObject协议
 BasePro协议遵守了NSObject协议，协议可以被协议遵守
 
 
 要让一个协议被遵守，就将这个协议写在<>里面
 */

//                 基协议
@protocol BasePro <NSObject>

-(void)run;
-(void)eat;

@end
