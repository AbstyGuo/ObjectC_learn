//
//  Person.h
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

/**成员变量的作用域
 @public        整个程序
 @protected     本类和子类内部(默认)
 @private       本类内部
 @package       包的内部
 
 //定义变量的时候写入
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //@protected
    NSString *_name;
    int _age;
    //@private
    int _weight;
    int _height;
}

//目前有且只有字符串使用copy
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int height;
@property (nonatomic, assign) int weight;

@end
