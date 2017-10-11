//
//  Student.h
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

//协议一般写在主动(A类、委托类)类中
//主动类：有需求的类
//被动类：能帮助A类完成需求的类(代理类)

//协议名： 当前类类名Delegate
@protocol StudentDelegate <NSObject>
-(void)findHouse;
@end


@interface Student : NSObject
//{
//    id<StudentDelegate>_delegate;
//}
//-(void)setDelegate:(id<StudentDelegate>)delegate;
//-(id<StudentDelegate>)delegate;
@property (nonatomic, assign) id<StudentDelegate>delegate;

-(void)findHelp;
@end
