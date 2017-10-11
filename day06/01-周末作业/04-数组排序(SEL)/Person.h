//
//  Person.h
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;


-(id)initWithName:(NSString *)name andAge:(int)age;


//排序的标准
// 8  5
-(BOOL)isBigWithOther:(Person *)person;//标准是降序，但是排出来是升序
-(BOOL)isSmallWithOther:(Person *)person;
@end
