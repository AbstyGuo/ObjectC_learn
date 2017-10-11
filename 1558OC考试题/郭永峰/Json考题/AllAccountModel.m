//
//  AllAccountModel.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "AllAccountModel.h"

@implementation AllAccountModel
+(AllAccountModel *)modelWithDictionary:(NSDictionary *)dic{
    return [[AllAccountModel alloc]initWithDictionary:dic];
}

-(id)initWithDictionary:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

-(NSString *)description{
    NSString * str =[NSString stringWithFormat:@"ID:%@  allMoney:%@  name:%@\n",_ID,_allMoney,_name];
    return str;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_ID forKey:@"ID"];
    [aCoder encodeObject:_allMoney forKey:@"allMoney"];
    [aCoder encodeObject:_name forKey:@"name"];
   
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        _ID=[aDecoder decodeObjectForKey:@"ID"];
        _allMoney=[aDecoder decodeObjectForKey:@"allMoney"];
        _name=[aDecoder decodeObjectForKey:@"name"];
    }
    return self;
}



@end
