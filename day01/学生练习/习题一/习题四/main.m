//
//  main.m
//  习题四
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WeiBo.h"
int main(int argc, const char * argv[])
{

    Date date1 = {9,3,16,8};

    WeiBo *weiBo1 = [WeiBo new];

    [weiBo1 setName:@"老罗"];
    [weiBo1 setContent:@"善意的刻薄提示"];
    [weiBo1 setDate:date1];
    [weiBo1 setReadNumber:34];
    [weiBo1 setReAndComNumber:161];

    Date date2 = [weiBo1 date];

    NSLog(@"\n%@在%i月%i日%i:0%i发表微博:%@\n阅读(%i万)\n全部转播和评论(%i)",[weiBo1 name],date2._month,date2._day,date2._hour,date2._minute,[weiBo1 content],[weiBo1 readNumber],[weiBo1 reAndComNumber]);

    [weiBo1 rebroadcast];

    [weiBo1 comment];

    [weiBo1 collect];
    
    return 0;
}

