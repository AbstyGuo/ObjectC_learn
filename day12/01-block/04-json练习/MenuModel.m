//
//  MenuModel.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "MenuModel.h"

@implementation MenuModel
+(MenuModel *)modelWithDictionary:(NSDictionary *)dic{
    return [[MenuModel alloc] initWithDictionary:dic];
}
-(id)initWithDictionary:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"%@ %@ %@ %@", _calories, _description, _name, _price];
    return str;
}
@end
