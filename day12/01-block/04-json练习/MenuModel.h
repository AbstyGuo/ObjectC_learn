//
//  MenuModel.h
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuModel : NSObject
@property (nonatomic, copy) NSString *calories;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *price;

+(MenuModel *)modelWithDictionary:(NSDictionary *)dic;

@end
