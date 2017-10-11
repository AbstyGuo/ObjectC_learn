//
//  WeiBo.h
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct{
    int _month;
    int _day;
    int _hour;
    int _minute;
}Date;

@interface WeiBo : NSObject
{
    NSString *_name;//发表人
    NSString *_content;//内容
    Date _date;//发表时间
    int _readNumber;//阅读量
    int _reAndComNumber;//转播和评论量
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setDate:(Date )date;
-(Date )date;

-(void)setContent:(NSString *)content;
-(NSString *)content;

-(void)setReadNumber:(int)readNumber;
-(int)readNumber;

-(void)setReAndComNumber:(int)reAndComNumber;
-(int)reAndComNumber;

//转播
-(void)rebroadcast;
//评论
-(void)comment;
//收藏
-(void)collect;
@end
