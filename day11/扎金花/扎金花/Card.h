//
//  Card.h
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, copy) NSString *cardColor;//牌花色
@property (nonatomic, copy) NSString *cardSize;//牌面大小
@property (nonatomic, assign) int cardPoint;//牌面值的大小
@property (nonatomic, assign) int cardFlag;//标志是否可用


-(BOOL)isSmallWithOther:(Card *)other;

@end
