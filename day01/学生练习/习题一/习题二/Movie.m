//
//  Movie.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "Movie.h"

@implementation Movie

-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setDate:(Date )date{
    _date = date;
}
-(Date )date{
    return _date;
}

-(void)setDirector:(NSString *)director{
    _director = director;
}
-(NSString *)director{
    return _director;
}
-(void)movieActor{
    NSLog(@"\n电影的演员是:徐静蕾,李亚鹏\n特别主演:王菲,陈奕迅");
}
@end
