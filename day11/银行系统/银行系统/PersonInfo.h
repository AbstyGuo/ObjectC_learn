//
//  PersonInfo.h
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IdCard.h"

@interface PersonInfo : NSObject <NSCoding>
{
    IdCard *_idCard;
}
-(void)setIdCard:(IdCard *)idCard;
-(IdCard *)idCard;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phoneNum;
@property (nonatomic, copy) NSString *myAddress;

@end
