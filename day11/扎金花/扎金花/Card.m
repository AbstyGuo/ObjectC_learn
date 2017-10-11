//
//  Card.m
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Card.h"

@implementation Card

-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"%@%@", _cardColor, _cardSize];
    return str;
}

-(BOOL)isSmallWithOther:(Card *)other{
    return self.cardPoint < other.cardPoint;
}

@end
