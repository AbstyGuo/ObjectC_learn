//
//  FoodDollar.h
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct{
    int _hour;
    int _minute;
}Date;
@interface FoodDollar : NSObject{
    NSString *_name;//名称
    int _value;//价值
    Date _date;//使用时间
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setValue:(int)value;
-(int)value;

-(void)setDate:(Date )date;
-(Date )date;

-(void)detailDescription;
@end
