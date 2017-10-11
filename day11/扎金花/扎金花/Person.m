//
//  Person.m
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Person.h"
#import "CardBox.h"
#import "Card.h"

@implementation Person
-(void)openCardsBox{
    if ([_delegate respondsToSelector:@selector(shuffleCards)]) {
        [_delegate performSelector:@selector(shuffleCards)];
    }
}

-(id)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
        _handCardsArray = [[NSMutableArray alloc] init];
    }
    return self;
}
-(NSMutableArray *)handCardsArray{
    return _handCardsArray;
}


+(void)grabCards:(int)num personArray:(NSMutableArray *)perArray{
    CardBox *cardBox = [CardBox defaultBox];
    
    for (int i = 0; i < num; i++) {
        for (Person *per in perArray) {
            Card *card = [[cardBox allCardsArray] objectAtIndex:0];
            [[per handCardsArray] addObject:card];
            
            [cardBox.allCardsArray removeObjectAtIndex:0];
        }
    }
    //手牌排序
    for (Person *per in perArray) {
        [per.handCardsArray sortUsingSelector:@selector(isSmallWithOther:)];
    }
}

//计算该人手中三张手牌的牌面值点数和
/**
 1、豹子（AAA最大，222最小）。   基数 30000 + 下标*3         int
 2、同花顺（AKQ最大，432 A32最小）。 基数 24000 +  中间牌的下标   2
 3、同花（A24最大，KQ10 352最小）。   基数 18000 + 排序 +  第一张牌的下标*300+第二张牌的下标*10+第三章牌的下标
 A72   A54
 
 4、顺子                         12000  +  中间牌的下标     2
 5、对子（AAK最大，223最小）。   基数 6000 + 对子牌下标*20 （A22 332） + 单牌下标
 552   44A
 6、单张（AKJ最大，352最小）。   基数   排序 +  第一张牌的下标*300+第二张牌的下标*10+第三章牌的下标
 玩“诈金花”可能牌小诈走牌大，是实力、勇气和智谋的较量，是冒险家的游戏。
 */
//计算手牌大小
+(void)calculateEveryPersonHandCardsPointSumFromArray:(NSMutableArray *)perArray{
    for (Person *per in perArray) {
        //豹子
        if ([per.handCardsArray[0] cardPoint] == [per.handCardsArray[1] cardPoint] && [per.handCardsArray[0] cardPoint] == [per.handCardsArray[2] cardPoint]) {
            per.handCardsPointSum = 30000 + [per.handCardsArray[0] cardPoint] * 3;
        }
        //同花顺、同花
        else if ([[per.handCardsArray[0] cardColor] isEqualToString:[per.handCardsArray[1] cardColor]] && [[per.handCardsArray[0] cardColor] isEqualToString:[per.handCardsArray[2] cardColor]]){
            
            //同花顺   987 432  A32
            if ([per.handCardsArray[0] cardPoint] - [per.handCardsArray[1] cardPoint] == 1 && [per.handCardsArray[0] cardPoint] - [per.handCardsArray[2] cardPoint] == 2) {
                per.handCardsPointSum = 24000 + [per.handCardsArray[1] cardPoint];
            }else if ([per.handCardsArray[0] cardPoint] == 14 && [per.handCardsArray[1] cardPoint] == 3 && [per.handCardsArray[2] cardPoint] == 2){
                per.handCardsPointSum = 24000 + [per.handCardsArray[2] cardPoint];
            }
            
            //同花
            else{
                per.handCardsPointSum = 18000 + [per.handCardsArray[0] cardPoint] * 300 + [per.handCardsArray[1] cardPoint] * 10 + [per.handCardsArray[2] cardPoint];
            }
        }
        
        //顺子
        else if ([per.handCardsArray[0] cardPoint] - [per.handCardsArray[1] cardPoint] == 1 && [per.handCardsArray[0] cardPoint] - [per.handCardsArray[2] cardPoint] == 2) {
            per.handCardsPointSum = 12000 + [per.handCardsArray[1] cardPoint];
        }else if ([per.handCardsArray[0] cardPoint] == 14 && [per.handCardsArray[1] cardPoint] == 3 && [per.handCardsArray[2] cardPoint] == 2){
            per.handCardsPointSum = 12000 + [per.handCardsArray[2] cardPoint];
        }
        
        //对子  KK8  K88
        else if ([per.handCardsArray[1] cardPoint] == [per.handCardsArray[0] cardPoint]){
            per.handCardsPointSum = 6000 + [per.handCardsArray[1] cardPoint] * 20 + [per.handCardsArray[2] cardPoint];
        }else if ([per.handCardsArray[1] cardPoint] == [per.handCardsArray[2] cardPoint]){
            per.handCardsPointSum = 6000 + [per.handCardsArray[1] cardPoint] * 20 + [per.handCardsArray[0] cardPoint];
        }
        
        else{
            per.handCardsPointSum = [per.handCardsArray[0] cardPoint] * 300 + [per.handCardsArray[1] cardPoint] * 10 + [per.handCardsArray[2] cardPoint];
        }
    }
    
    [perArray sortUsingSelector:@selector(isSmallWithOtherPer:)];
}

-(BOOL)isSmallWithOtherPer:(Person *)other{
    return self.handCardsPointSum < other.handCardsPointSum;
}
-(NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"%@ :", _name];
    
    for (Card *card in _handCardsArray) {
        [str appendFormat:@"\t%@", card];
    }
    [str appendFormat:@"\t%d", _handCardsPointSum];
    return str;
}

@end
