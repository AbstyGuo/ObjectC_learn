//
//  main.m
//  04-数组排序(SEL)
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Family.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Family *fam = [[Family alloc] init];
        
        
        Person *per1 = [[Person alloc] initWithName:@"刘小光" andAge:35];
        Person *per2 = [[Person alloc] initWithName:@"宋小宝" andAge:39];
        Person *per3 = [[Person alloc] initWithName:@"沈小阳" andAge:32];
        Person *per4 = [[Person alloc] initWithName:@"王小利" andAge:40];
//        NSLog(@"%@", per1);

        [fam addPersonToArray:per1];
        [fam addPersonToArray:per2];
        [fam addPersonToArray:per3];
        [fam addPersonToArray:per4];
        NSLog(@"%@", fam);
        
        
        
        //排序
        //1、排序标准   2、排序的方法(升序、降序)
        //用带SEL的方法排序
        //使用：sortUsingSelector:这个方法会按照SEL提供的标准进行排序
        //注意：提供标准的方法要放在数组的元素的类型里面
        SEL sel1 = @selector(isBigWithOther:);
//        SEL sel2 = @selector(isSmallWithOther:);
        [fam.perArray sortUsingSelector:sel1];
        
        
//        NSLog(@"%@", fam);

        
    }
    return 0;
}


