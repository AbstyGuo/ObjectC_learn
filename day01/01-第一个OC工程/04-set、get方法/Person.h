//
//  Person.h
//  01-第一个OC工程
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //@public
    int _age;
}


////自定义方法给成员变量赋值
//-(void)addAge:(int)age;
//-(int)lookAge;



/**set方法：用来给对应成员变量赋值的
 set方法的定义规则
 1、以-号开头
 2、不需要返回值
 3、方法名必须以set开头，后面是对应成员变量去掉下滑线后首字母大写的部分
 4、有且只有一个参数，参数的类型为对应成员变量的类型，参数的名为对应成员变量去掉下划线后的部分
 */
-(void)setAge:(int)age;

/**get方法：用来取对应成员变量的值
 get方法的命名规则
 1、以-号开头
 2、有返回值，返回值类型为对应成员变量的类型
 3、方法名是对应成员变量去掉下划线后的部分
 4、没有参数
 */
-(int)age;


@end
