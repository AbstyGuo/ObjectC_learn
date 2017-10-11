//
//  Person.m
//  01-第一个OC工程
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person
//-(void)addAge:(int)age{
//    
//    //过滤
//    if (age > 0) {
//        _age = age;
//    }else
//        _age = 0;
//}
//-(int)lookAge{
//    return _age;
//}


-(void)setAge:(int)age{
    _age = age;
}
/**成员变量以下划线开头的好处
 1、容易查找
 2、在set方法中与参数做区分
 */

-(int)age{
    return _age;
}
@end
