//
//  PersonInfo.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "PersonInfo.h"

@implementation PersonInfo
//身份证的set、get方法
-(void)setIdCard:(IdCard *)idCard{
    _idCard = idCard;
}
-(IdCard *)idCard{
    return _idCard;
}
-(NSString *)description{
    NSString *string = [NSString stringWithFormat:@"%@\n电话号:%@\n现住址:%@", _idCard, _phoneNum, _myAddress];
    return string;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_idCard forKey:@"idCard"];
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_phoneNum forKey:@"phoneNum"];
    [aCoder encodeObject:_myAddress forKey:@"myAddress"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _idCard = [aDecoder decodeObjectForKey:@"idCard"];
        _name = [aDecoder decodeObjectForKey:@"name"];
        _phoneNum = [aDecoder decodeObjectForKey:@"phoneNum"];
        _myAddress = [aDecoder decodeObjectForKey:@"myAddress"];
    }
    return self;
}
@end
