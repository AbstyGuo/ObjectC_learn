//
//  IdCard.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "IdCard.h"

@implementation IdCard
-(NSString *)description{
    NSString *string = [NSString stringWithFormat:@"\n姓名:%@\n性别:%@\n民族:%@\n出生年月:%@\n住址:%@\n公民身份证号:%@\n发证机关:%@\n有效期限:%@\n国籍:%@", _name, _sex, _nation, _dateOfBirth, _address, _idNum, _body, _timeLimit, _nationality];
    return string;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_sex forKey:@"sex"];
    [aCoder encodeObject:_nation forKey:@"nation"];
    [aCoder encodeObject:_dateOfBirth forKey:@"dateOfBirth"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeObject:_idNum forKey:@"idNum"];
    [aCoder encodeObject:_body forKey:@"body"];
    [aCoder encodeObject:_timeLimit forKey:@"timeLimit"];
    [aCoder encodeObject:_nationality forKey:@"nationality"];
    
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _sex = [aDecoder decodeObjectForKey:@"sex"];
        _nation = [aDecoder decodeObjectForKey:@"nation"];
        _dateOfBirth = [aDecoder decodeObjectForKey:@"dateOfBirth"];
        _address = [aDecoder decodeObjectForKey:@"address"];
        _idNum = [aDecoder decodeObjectForKey:@"idNum"];
        _body = [aDecoder decodeObjectForKey:@"body"];
        _timeLimit = [aDecoder decodeObjectForKey:@"timeLimit"];
        _nationality = [aDecoder decodeObjectForKey:@"nationality"];
    }
    return self;
}
@end
