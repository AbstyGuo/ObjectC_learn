//
//  Person.h
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>


//             父类(超类)，NSObject是基类。OC中是单继承(只能继承自一个父类)
@interface Person : NSObject
{
    int _age;
    int _money;//如果想要让当前类的成员变量可以被继承，需要手动生成成员变量
}

@property (nonatomic, assign) int age;
@property (nonatomic, assign) int money;

-(void)run;
-(void)eat;

@end
