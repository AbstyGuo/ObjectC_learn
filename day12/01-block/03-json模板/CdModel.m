//
//  CdModel.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "CdModel.h"

@implementation CdModel
+(CdModel *)modelWithDictionary:(NSDictionary *)dic{
    return [[CdModel alloc] initWithDictionary:dic];
}
-(id)initWithDictionary:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"%@ - %@ - %@ - %@ - %@ - %@", _ARTIST, _COMPANY, _COUNTRY, _PRICE, _TITLE, _YEAR];
    return str;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_ARTIST forKey:@"ARTIST"];
    [aCoder encodeObject:_COMPANY forKey:@"COMPANY"];
    [aCoder encodeObject:_COUNTRY forKey:@"COUNTRY"];
    [aCoder encodeObject:_PRICE forKey:@"PRICE"];
    [aCoder encodeObject:_TITLE forKey:@"TITLE"];
    [aCoder encodeObject:_YEAR forKey:@"YEAR"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _ARTIST  = [aDecoder decodeObjectForKey:@"ARTIST"];
        _COMPANY = [aDecoder decodeObjectForKey:@"COMPANY"];
        _COUNTRY = [aDecoder decodeObjectForKey:@"COUNTRY"];
        _PRICE   = [aDecoder decodeObjectForKey:@"PRICE"];
        _TITLE   = [aDecoder decodeObjectForKey:@"TITLE"];
        _YEAR    = [aDecoder decodeObjectForKey:@"YEAR"];
    }
    return self;
}
@end
