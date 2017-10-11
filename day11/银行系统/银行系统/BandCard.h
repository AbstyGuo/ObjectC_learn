//
//  BandCard.h
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonInfo.h"

@interface BandCard : NSObject <NSCoding>
{
    PersonInfo *_perInfo;
}
-(void)setPerInfo:(PersonInfo *)perInfo;
-(PersonInfo *)perInfo;
@property (nonatomic, assign) NSUInteger cardNum;
@property (nonatomic, assign) NSUInteger cardPasswd;
@property (nonatomic, assign) NSUInteger cardMoney;
@property (nonatomic, assign) int cardFlag;

@end
