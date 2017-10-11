//
//  main.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
//重命名，此时myBlock即为可以指向一个返回值为void，且有一个整型参数的代码块的block类型
typedef void (^myBlock)(int d);

int mySum(int x, int y)
{
    return x + y;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         函数指针：指向函数的指针，指向的是函数的首地址
         定义：
         要指向函数的返回值类型  (*函数指针变量名)(要指向函数的参数列表)
         */
        
        int (*f)(int x, int y) = mySum;
        //int sum = mySum(10, 20);
        int sum = f(10, 20);
        NSLog(@"sum = %d", sum);
        
        
        
        /*
         block与函数指针非常相似
         block指向的是代码块，保存的是代码块的地址
         定义:
         要指向代码块的返回值类型  (^block变量名)(要指向代码块的参数列表)
         
         
         注意：
         1、^号是block的专用标识
         2、block变量的类型和参数列表要与所指向的代码块一一对应
         */
        
        
        //blcok变量的样式
        void (^block1)(int a);
        
        //代码块的样式
        ^void (int a){
            //功能
        };
        
        
        void (^block2)(int b) = ^void (int b){
            NSLog(@"b = %d", b);
        };
        //调用block变量
        //格式：block变量名(参数列表)
        //注意：代码块是在调用指向它的block变量时才被执行的
        block2(20);
        
//        //一般返回值为void时，代码块的返回值类型可以省略
//        void (^block3)(int c) = ^(int c){
//            NSLog(@"c = %d", c);
//        };
        
        
        //如上比较繁琐，给block重命名
        myBlock block4 = ^void (int d){
            NSLog(@"d = %d", d);
        };
        block4(40);
        
        
        //代码块内可以使用外部变量的值
        int temp1 = 10;
        myBlock block5 = ^void (int e){
            NSLog(@"e = %d", e + temp1);
        };
        block5(40);
        
        
        
        //代码块内可以改变外部变量的值？
        //目前来看不可以
        //如果非要改变外部变量的值怎么办？
        //答：需要将外部变量变为block变量
        __block int temp2 = 11;
        myBlock block6 = ^void (int f){
            temp2--;
            NSLog(@"f = %d", f + temp2);
        };
        block6(50);
        NSLog(@"temp2 = %d", temp2);
        
        
        
        //block优点：效率高、操作简单
        
        //block的应用场景：多线程(GCD)(GCD是实现多线程的一种方式)、动画的转成(实现)、自定义的控件(按键)、反向传值、排序等
        
        
        //排序
        NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"sunck", @"is", @"a", @"good", @"man"]];
        [array sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            //return ([obj1 compare:obj2] == NSOrderedDescending);
            return [obj1 length] < [obj2 length];
        }];
        NSLog(@"array = %@", array);

    }
    return 0;
}

