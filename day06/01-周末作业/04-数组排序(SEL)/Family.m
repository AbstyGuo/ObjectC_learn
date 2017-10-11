//
//  Family.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Family.h"
//#import "Person.h"

@implementation Family
//因为有个可变数组属性，所以重新init，使之指向一个真正的数组对象
-(id)init{
    if (self = [super init]) {
        _perArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSMutableArray *)perArray{
    //Person *p = [[Person alloc] initWithName:@"a" andAge:1];
    
    return _perArray;
}

-(void)addPersonToArray:(Person *)person{
    [_perArray addObject:person];
}

-(NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] init];
    //NSLog(@"_perArray = %@", _perArray);
    for (Person *per in _perArray) {
        [str appendFormat:@"\n%@", per];
    }
    return str;
}
@end
