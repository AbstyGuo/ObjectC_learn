//
//  Movie.h
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct{
    int _year;
    int _month;
    int _day;
}Date;

@interface Movie : NSObject
{
    NSString *_name;//电影名字
    Date _date;//上映时间
    NSString *_director;//导演
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setDate:(Date )date;
-(Date )date;

-(void)setDirector:(NSString *)director;
-(NSString *)director;

//电影演员
-(void)movieActor;
@end
