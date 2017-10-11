//
//  AllAccountModel.h
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AllAccountModel : NSObject<NSCoding>
@property(nonatomic,copy) NSString * ID;
@property(nonatomic,copy) NSString * allMoney;
@property(nonatomic,copy) NSString * name;

+(AllAccountModel *)modelWithDictionary:(NSDictionary *)dic;

@end
