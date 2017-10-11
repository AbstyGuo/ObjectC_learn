//
//  Person.m
//  01-昨天作业1
//
//  Created by qianfeng on 15-11-6.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person
//封装    存储的时候是按照key-value的形式来存储
- (void)encodeWithCoder:(NSCoder *)aCoder{
    //成员变量进行封装
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:[NSNumber numberWithInt:_age] forKey:@"age"];
}

//解封  
- (id)initWithCoder:(NSCoder *)aDecoder{
    
//    //当前类的父类遵守NSCoding协议
//    if (self = [super initWithCoder:aDecoder]) {
//        _name = [aDecoder decodeObjectForKey:@"name"];
//        _age  = [[aDecoder decodeObjectForKey:@"age"] intValue];
//    }
    
    
    //当前类的父类不遵守NSCoding协议
}
@end
