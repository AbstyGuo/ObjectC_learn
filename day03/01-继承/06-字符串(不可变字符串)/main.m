//
//  main.m
//  06-字符串(不可变字符串)
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         OC中字符串类
         
         不可变字符串：指针的指向可以改变，指向的内容不可以改变
         可变字符串：指针的指向可以改变，指向的内容可以改变
         */
        
        
        //不可变字符串
        
        
        //创建
        
        //创建空字符串
        NSString *str1 = [[NSString alloc] init];//@""     ""
        
        
        //简单方式创建字符串
        NSString *str2 = @"sunck is a good man";
        
        
        //通过对象方法创建字符串
        //1、通过应经存在的字符串对象创建新字符串对象
        NSString *str3 = [[NSString alloc] initWithString:str2];
        //2、通过C语言的字符串创建新字符串对象
        NSString *str4 = [[NSString alloc] initWithUTF8String:"sunck is a nice man"];
        //3、格式化字符串
        NSString *str5 = [[NSString alloc] initWithFormat:@"%@!", str4];
        
        
        //通过类方法
        //1、通过应经存在的字符串对象创建新字符串对象
        NSString *str6 = [NSString stringWithString:str2];
        //2、通过C语言的字符串创建新字符串对象
        NSString *str7 = [NSString stringWithUTF8String:"sunck is a handsome man"];
        //3、格式化字符串
        NSString *str8 = [NSString stringWithFormat:@"%@!", str7];
        
        
        
        //通过本地文件创建字符串对象
        //参数1：文件的路径
        //参数3：错误输出，一般写nil
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day03/01-继承/06-字符串(不可变字符串)/File1";
        NSError *error = nil;
        NSString *str9 = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
        NSLog(@"str9 = %@", str9);
        //如果读取出错，error就不为空，内容就是出错的信息
        if (error) {
            NSLog(@"%@", error);
        }
        
        
        
        //通过网络
        //NSURL:统一资源定位器
        //作用：如果想读取网络中的数据，需要将网址封装成一个NSURL的对象
        NSURL *url = [NSURL URLWithString:@"http://10.0.8.8/JudgeOnline-new/index.php?c=index&a=index"];
        NSString *str10 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"str10 = %@", str10);
        
    }
    return 0;
}
//人开枪射击子弹    组合，构造方法，类设计的知识，方法调用的知识，set、get方法的知识
