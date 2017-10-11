//
//  BandCard.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "BandCard.h"

@implementation BandCard
-(void)setPerInfo:(PersonInfo *)perInfo{
    _perInfo = perInfo;
}
-(PersonInfo *)perInfo{
    return _perInfo;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_perInfo forKey:@"perInfo"];
    [aCoder encodeObject:[NSNumber numberWithInteger:_cardNum] forKey:@"cardNum"];
    [aCoder encodeObject:[NSNumber numberWithInteger:_cardPasswd] forKey:@"cardPasswd"];
    [aCoder encodeObject:[NSNumber numberWithInteger:_cardMoney] forKey:@"cardMoney"];
    [aCoder encodeObject:[NSNumber numberWithInt:_cardFlag] forKey:@"cardFlag"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super init]) {
        _perInfo = [aDecoder decodeObjectForKey:@"perInfo"];
        _cardNum = [[aDecoder decodeObjectForKey:@"cardNum"] integerValue];
        _cardPasswd = [[aDecoder decodeObjectForKey:@"cardPasswd"] integerValue];
        _cardMoney = [[aDecoder decodeObjectForKey:@"cardMoney"] integerValue];
        _cardFlag = [[aDecoder decodeObjectForKey:@"cardFlag"] intValue];
    }
    return self;
}
@end
