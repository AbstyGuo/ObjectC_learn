//
//  main.m
//  08-补充知识
//
//  Created by qianfeng on 15-11-5.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
#import "BasePro.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Cat *cat = [[Cat alloc] init];
        Dog *dog = [[Dog alloc] init];
        
        [cat eat];
        [dog eat];
        
        //id类型的变量遵守了BasePro协议，必须要遵守
        id<BasePro>obj = cat;
        [obj eat];
        //[obj play];
        
        
        
        //匿名对象
        //没有通过一个指针指向的对象
        //作用：节省代码，提高效率
        [Dog alloc];
        [[Dog alloc] init];
        
        
        
        Dog *dag5 = [[Dog alloc] init];
        dag5.age = 10;
        [Dog alloc].weight = 20;
        [[Dog alloc] init].height = 50;
        
        NSLog(@"dag5.age = %d", dag5.age);
        NSLog(@"dag5.weight = %d", dag5.weight);
        NSLog(@"dag5.height = %d", dag5.height);
        NSLog(@"[[Dog alloc] init].height = %d", [[Dog alloc] init].height);
    }
    return 0;
}

