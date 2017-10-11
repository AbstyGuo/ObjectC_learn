//
//  main.m
//  01-第一个OC工程
//
//  Created by qianfeng on 15-10-26.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

//C语言引入头文件
#include "stdio.h"

//导入系统基础类库文件
#import <Foundation/Foundation.h>
#import "func.h"//以后都用import

//import是include的升级版本，可以避免重复导入，但是不能避免相互导入
//Foundation是一个框架，Foundation.h是框架的主头文件



int main(int argc, const char * argv[])
{

    //自动释放池
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");//NSLog是OC中的输出方法
        NSLog(@"Hello, World!");
        
        /**NSLog和printf
         1、名字不同
         2、打印的内容不同，且“”号的前面多个了@
         3、NSLog可以自动换行
         4、用于的语言不同
         */
        
        func();//如果想调用该方法，需要导入该方法所在的头文件
        
    }
    return 0;
}



