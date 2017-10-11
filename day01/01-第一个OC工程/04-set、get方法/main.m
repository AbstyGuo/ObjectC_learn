//
//  main.m
//  04-set、get方法
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //实例化一个对象
        Person *per = [Person new];
        
        
        //1、直接赋值，以后禁止直接访问属性，因为这个会出现脏数据，这样不安全
        //per->_age = -18;
        //NSLog(@"per->_age = %d", per->_age);
        
        
        /**解决
         1、不允许直接赋值
         2、结果过滤，将正确的值保存起来
         */
        
        
        
        //2、自定义方法赋值(一般不建议这么写)
        //【封装】将现实的过程隐藏起来，属性私有化(外部不可以直接使用)，通过公共的方法取访问成员变量，这就是对对象的封装。
        
        //间接赋值：通过一个共有的方法间接给成员变量赋值，在这个方法里可以添加自己的功能(过滤)
        //[per addAge:18];
        
        //int age = [per lookAge];
        //NSLog(@"per->_age = %d", age);
        
        
        
        //3、set、get方法，这是约定的方法
        [per setAge:18];
        int age = [per age];
        NSLog(@"per->_age = %d", age);
    }
    return 0;
}

//孙长凯：18910847367
/**OC第一天作业
 1、设计学生类(属性大于5个并且要有set、get方法，功能大于5个至少三个带参数)
 
 2、设计猫类，其余同上
 
 3、盖房子
 */

