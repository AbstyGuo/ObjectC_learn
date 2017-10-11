//
//  Person.m
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"

@implementation Person
//-(void)feedCat:(Cat *)cat{
//    [cat eat];
//}
//
//-(void)feedDog:(Dog *)dog{
//    [dog eat];
//}
//Animal *指向子类的对象没有错误，正因为继承
-(void)feedAnimal:(Animal *)animal{//animal = cat1   Animal *animal2 = [Cat new];

    [animal eat];
}
@end
