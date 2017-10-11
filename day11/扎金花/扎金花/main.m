//
//  main.m
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardBox.h"
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        CardBox *cardBox = [CardBox defaultBox];
        //NSLog(@"%@", cardBox);
        
        //荷官
        Person *per = [[Person alloc] initWithName:@"赵本山"];
        per.delegate = cardBox;//建立代理关系
        [per openCardsBox];//委托方出卖方法
        //NSLog(@"%@", cardBox);
        
        Person *per1 = [[Person alloc] initWithName:@"刘小光"];
        Person *per2 = [[Person alloc] initWithName:@"宋小宝"];
        Person *per3 = [[Person alloc] initWithName:@"沈小阳"];
        Person *per4 = [[Person alloc] initWithName:@"王小利"];
        
        
        NSMutableArray *perArray = [[NSMutableArray alloc] init];
        [perArray addObject:per1];
        [perArray addObject:per2];
        [perArray addObject:per3];
        [perArray addObject:per4];
        
        //每个人抓三张牌
        [Person grabCards:3 personArray:perArray];
        
        
        //算每人的手牌的牌值大小
        [Person calculateEveryPersonHandCardsPointSumFromArray:perArray];
        
        
        NSLog(@"%@", per1);
        NSLog(@"%@", per2);
        NSLog(@"%@", per3);
        NSLog(@"%@", per4);
        
        
        
        NSLog(@"Winer:%@", [perArray[0] name]);
    }
    return 0;
}

