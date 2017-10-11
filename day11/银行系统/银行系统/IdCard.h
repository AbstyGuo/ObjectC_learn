//
//  IdCard.h
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IdCard : NSObject <NSCoding>
//姓名、性别、民族、出生年月、住址、公民身份证号、发证机关、有效期限、国籍
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *nation;
@property (nonatomic, copy) NSString *dateOfBirth;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *idNum;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSString *timeLimit;
@property (nonatomic, copy) NSString *nationality;
@end
