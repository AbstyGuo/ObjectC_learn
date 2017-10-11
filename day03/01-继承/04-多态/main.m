//
//  main.m
//  04-多态
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
#import "Animal.h"
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         什么叫多态：一种事物的多种形态
         
         多态的前提是继承
         */
        
        Cat *cat1 = [Cat new];
        Dog *dog1 = [Dog new];
        
        [cat1 eat];
        [dog1 eat];
        
        Animal *animal1 = [Animal new];
        [animal1 eat];
        
        
        
        //父类的指针指向子类的对象，这个过程就是多态
        Animal *animal2 = [Cat new];
        //在运行阶段才让真正的对象去调用这个方法，这个过程称为“动态绑定”
        [animal2 eat];
        
        
        
        Person *per = [Person new];
//        [per feedCat:cat1];
//        [per feedDog:dog1];
        
        [per feedAnimal:cat1];
        
        
        
        //**********************
        
        
//        Cat *cat3 = [Dog new];//不行的
//        [cat3 run];
        
        Animal *animal5 = [Cat new];
        //父类指针不能直接调用子类独有的方法，如果想调用，需要将父类指针强制转换成子类类型
        [(Cat *)animal5 run];
        
    }
    return 0;
}

