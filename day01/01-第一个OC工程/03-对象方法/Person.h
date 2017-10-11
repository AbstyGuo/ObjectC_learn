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
    @public//使属性变为公有的，全局的，在类的外部可以直接访问(使用)
    int _height;
    int _weight;//成员变量以下划线开头，遵守驼峰原则
    //int _oneNightInBeiJing;
}

//对象方法
/**定义规则
 1、以-号开头
 2、所有的数据类型放到小括号里，且只有数据类型放到小括号里
 3、方法名遵循驼峰原则
 4、如果方法没有参数，那就直接在方法名后面;结束
 */

//无参无返回值
-(void)run;

//无参有返回值
-(int)play;


/**带参数的对象方法命名规则
 1、对象方法命名规则除4以外剩下的都遵守
 2、一个参数带着一个:号，:号放在类型名的前面
 3、方法名要写的像个句子(见名知意)
 注意：:号属于方法名的一部分，-号不属于方法名的一部分
 */

-(void)eatApple:(int)num;

//                         冒号前面是修饰词，修饰变量，让方法更像个句子
-(void)eatBanana:(int)num1 andOrange:(int)num2;



@end
