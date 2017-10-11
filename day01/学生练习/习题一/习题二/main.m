//
//  main.m
//  习题二
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

int main(int argc, const char * argv[])
{
    //上映日期
    Date date1 = {2011,2,12};

    Movie *movie1 = [Movie new];

    [movie1 setName:@"将爱情进行到底"];
    [movie1 setDirector:@"张一白"];
    [movie1 setDate:date1];

    Date date2 = [movie1 date];

    NSLog(@"\n电影名称:%@\n导演:%@\n上映日期:%i年%i月%i日",[movie1 name],[movie1 director],date2._year,date2._month,date2._day );

    [movie1 movieActor];

    return 0;
}

