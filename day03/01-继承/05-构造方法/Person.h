//
//  Person.h
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int height;


//构造方法家族,必须以init开头，必须遵守驼峰原则
-(id)initWithName:(NSString *)name andAge:(int)age andHeight:(int)height;
//-(id)initWithName:(NSString *)name;
//-(id)initWithAge:(int)age andHeight:(int)height;

@end
