//
//  FoodDollar.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "FoodDollar.h"

@implementation FoodDollar
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setDate:(Date )date{
    _date = date;
}
-(Date )date{
    return _date;
}

-(void)setValue:(int)value{
    _value = value;
}

-(int)value{
    return _value;
}

-(void)detailDescription{
    NSLog(@"\n您购买的优惠券是:%@\n面值:%i元\n,在每天上午%i:%i时后使用\n注意:本优惠劵仅限中国大陆地区售卖优惠券内产生的麦当劳....同时使用.",_name,_value,_date._hour,_date._minute);
}
@end
