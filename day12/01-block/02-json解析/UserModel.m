//
//  UserModel.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel
+(UserModel *)modelWithDictionary:(NSDictionary *)d{
    return [[UserModel alloc] initWithDictionary:d];
}
-(id)initWithDictionary:(NSDictionary *)d{
    if (self = [super init]) {
//        _credit       = d[@"credit"];
//        _experience   = d[@"experience"];
//        _friendnum    = d[@"friendnum"];
//        _groupid      = d[@"groupid"];
//        _headimage    = d[@"headimage"];
//        _lastactivity = d[@"lastactivity"];
//        _realname     = d[@"realname"];
//        _uid          = d[@"uid"];
//        _username     = d[@"username"];
//        _viewnum      = d[@"viewnum"];
        
        [self setValuesForKeysWithDictionary:d];
        /**
         kvc:key-value-coding  键值编码
         setValuesForKeysWithDictionary:是kvc中的一个方法，就是将字典中的value存入对应的模型对象里
         
         注意：
         1、@property后面的变量名要与字典中对应的key一致
         2、字典中的key在模型类中必须要有对应的属性
         3、模型类有的字典中key不需要有对应的
         */
    }
    return self;
}
//重写description
-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"%@ - %@ - %@ - %@ - %@ - %@ - %@ - %@ - %@ - %@", _credit, _experience, _friendnum, _groupid, _headimage, _lastactivity, _realname, _uid, _username, _viewnum];
    return str;
}
@end
