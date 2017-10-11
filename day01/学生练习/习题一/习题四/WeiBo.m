//
//  WeiBo.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "WeiBo.h"

@implementation WeiBo
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

-(void)setContent:(NSString *)content{
    _content = content;
}
-(NSString *)content{
    return _content;
}

-(void)setReadNumber:(int)readNumber{
    _readNumber = readNumber;
}
-(int)readNumber{
    return _readNumber;
}

-(void)setReAndComNumber:(int)reAndComNumber{
    _reAndComNumber = reAndComNumber;
}
-(int)reAndComNumber{
    return _reAndComNumber;
}

//转播
-(void)rebroadcast{
    NSLog(@"转播成功");
}
//评论
-(void)comment{
    NSLog(@"评论成功");
}
//收藏
-(void)collect{
    NSLog(@"收藏成功");
}
@end
