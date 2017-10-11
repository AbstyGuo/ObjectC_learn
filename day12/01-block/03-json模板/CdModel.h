//
//  CdModel.h
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CdModel : NSObject <NSCoding>
@property (nonatomic, copy) NSString *ARTIST;
@property (nonatomic, copy) NSString *COMPANY;
@property (nonatomic, copy) NSString *COUNTRY;
@property (nonatomic, copy) NSString *PRICE;
@property (nonatomic, copy) NSString *TITLE;
@property (nonatomic, copy) NSString *YEAR;


+(CdModel *)modelWithDictionary:(NSDictionary *)dic;

@end
