//
//  main.m
//  习题十一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodDollar.h"
int main(int argc, const char * argv[])
{
    Date date1 = {10,30};

    FoodDollar *foodDollar1 = [FoodDollar new];

    [foodDollar1 setName:@"原味板烧鸡腿堡+麦辣鸡翅(2块)"];
    [foodDollar1 setValue:20];
    [foodDollar1 setDate:date1];

    [foodDollar1 detailDescription];
    return 0;
}

