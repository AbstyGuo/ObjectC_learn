//
//  Calculator.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
//-(Calculator *)sumWithOtherCal:(Calculator *)cal{
//    self.ret += cal.ret;
//    
//    return self;
//}
//-(Calculator *)subWithOtherCal:(Calculator *)cal{
//    self.ret -= cal.ret;
//    
//    return self;
//}
-(id)sumWithOtherCal:(id)cal{
    //1、id类型的变量不能直接使用对象成员变量
    //2、id类型的变量不能使用点语法
    self.ret += [cal ret];
    
    return self;
}

@end
