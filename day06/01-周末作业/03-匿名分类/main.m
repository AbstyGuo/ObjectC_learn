//
//  main.m
//  03-匿名分类
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         注意：在分类中不能定义【使用(调用)】成员变量
         
         匿名分类：专门用来定义私有的属性和方法的
         @interface 类名 ()
         {
         属性
         }
         方法
         @end
         
         注意：
         1、定义的方法的实现要写在它依附的类的实现部分中
         2、匿名分类中可以定义成员变量和方法
         
         
         应用场景：一般写在依赖类.m文件中的上方
         */
        
        
        Person *per = [[Person alloc] init];
        
        [per run];
        //[per eat];//eat是私有的，所以外部无法访问
        
        //[per setWeight:10];//匿名分类中用property自动生成的对应成员变量的set、get方法也是私有的
        
    }
    return 0;
}

