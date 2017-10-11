//
//  main.m
//  分类考题
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+SumFromArray.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray * array =@[@"10",@"2",@"3",@"20"];
        NSUInteger x =[array sumWithElement];
        NSLog(@"%lu",x);
        
    }
    return 0;
}

