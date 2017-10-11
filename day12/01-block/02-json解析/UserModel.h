//
//  UserModel.h
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject
@property (nonatomic, copy) NSString *credit;
@property (nonatomic, copy) NSString *experience;
@property (nonatomic, copy) NSString *friendnum;
@property (nonatomic, copy) NSString *groupid;
@property (nonatomic, copy) NSString *headimage;
@property (nonatomic, copy) NSString *lastactivity;
@property (nonatomic, copy) NSString *realname;
@property (nonatomic, copy) NSString *uid;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *viewnum;

//通过类方法将字典转成模型
+(UserModel *)modelWithDictionary:(NSDictionary *)d;

@end
