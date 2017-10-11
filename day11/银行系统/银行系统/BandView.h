//
//  BandView.h
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BandViewDelegate <NSObject>
-(void)openCard;
-(void)searchMoney;
@end

enum{
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h,
    i,
    j,
    k
};

@interface BandView : NSObject
@property (nonatomic, assign) id<BandViewDelegate>delegate;

-(void)loginView;
-(void)functionView;

//得到相应操作
+(NSUInteger)flagWithOperate:(NSString *)operate;

-(BOOL)loginFun;//登录



-(void)willOpenCard;
-(void)willSearchMoney;
@end
