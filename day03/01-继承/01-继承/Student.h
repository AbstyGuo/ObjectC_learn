//
//  Student.h
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
{
    int _idNum;//子类可以自定义自己独有的属性
    //int _age;//成员变量是不可以重新定义的，这样会重定义
}
-(void)play;//子类可以自定义自己独有的方法

//-(void)run;//继承过来的方法可以再定义一遍，但是然并卵
@end
