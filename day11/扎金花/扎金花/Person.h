//
//  Person.h
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonDelegate <NSObject>
-(void)shuffleCards;
@end

@interface Person : NSObject
{
    NSMutableArray *_handCardsArray;
}
-(NSMutableArray *)handCardsArray;

@property (nonatomic, assign) id<PersonDelegate>delegate;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int handCardsPointSum;
-(id)initWithName:(NSString *)name;

//抓牌
+(void)grabCards:(int)num personArray:(NSMutableArray *)perArray;

//计算手牌大小
+(void)calculateEveryPersonHandCardsPointSumFromArray:(NSMutableArray *)perArray;

-(void)openCardsBox;

-(BOOL)isSmallWithOtherPer:(Person *)other;

@end
