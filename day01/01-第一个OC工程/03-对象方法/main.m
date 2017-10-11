//
//  main.m
//  03-对象方法
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //类型名  变量名;
        
        
        //注意：如果想让类或者对象去干某件事，必须这么写[方法的调用者  方法名]，详细点[类名、对象(对象指针)  方法名]
        
        
        //创建一个Person类型的对象(对象的实例化)
        Person *per1 = [Person new];
        //局部变量(栈)    对象(堆)
        /**[Person new]干了三件事
         1、在堆区开辟内存空间，用来存储对象的。
         2、初始化成员变量，将简单数据类型初始化为0，指针类型初始化为nil(NULL)
         3、返回地址
         */
        //用Person类型的指针保存Person类型对象的地址
        //per1实际上是一个对象指针，等号后面是真正的对象。但是我们一般把per1这个对象指针称之为对象
        per1->_height = 175;
        NSLog(@"per1->_height = %d", per1->_height);
        [per1 run];
        [per1 eatBanana:5 andOrange:6];//对象方法用对象来调用
        
        
        //多个对象之间互不影响
        Person *per2 = [Person new];
        NSLog(@"per2->_height = %d", per2->_height);
        
        
    }
    return 0;
}

