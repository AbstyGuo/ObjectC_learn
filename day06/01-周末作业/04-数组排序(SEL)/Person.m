//
//  Person.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithName:(NSString *)name andAge:(int)age{
    if (self = [super init]) {
        _name = name;
        _age  = age;
    }
    return self;
}

-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"姓名:%@  年龄:%d", _name, _age];
    return str;
}

//   4 5
-(BOOL)isBigWithOther:(Person *)person{
//    if (self.age > person.age) {
//        return YES;
//    }
//    return NO;
    
    return (self.age > person.age);
}

-(BOOL)isSmallWithOther:(Person *)person{
    return (self.age < person.age);
}

@end
