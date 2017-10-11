//
//  CardBox.m
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "CardBox.h"
#import "Card.h"

static CardBox *sign = nil;


@implementation CardBox
-(id)init{
    if (self = [super init]) {
        _allCardsArray = [[NSMutableArray alloc] init];
    }
    return self;
}
+(CardBox *)defaultBox{
    @synchronized(self){
        if (sign == nil) {
            sign = [[CardBox alloc] init];
            
            [sign creatAllCardsToArray];
        }
    }
    return sign;
}
+(id)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self){
        if (sign == nil) {
            sign = [super allocWithZone:zone];
        }
    }
    return sign;
}
+(void)deleteSign{
    if (sign) {
        sign = nil;
    }
}

-(NSMutableArray *)allCardsArray{
    return _allCardsArray;
}

-(void)creatAllCardsToArray{
    NSArray *cardColorArray = @[@"♦️", @"♣️", @"❤️", @"♠️", @""];
    NSArray *cardSizeArray  = @[@"", @"", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K", @"A", @"X", @"D"];
    
    for (int i = 0; i <= 4; i++) {
        for (int j = 2; j <= 16; j++) {
            //控制i=4时，跳过j=2~14
            if (i == 4 && j != 15 && j != 16) {
                continue;
            }
            //控制i=0~3时，跳过j=15~16
            else if (i != 4 && (j == 15 || j == 16)) {
                continue;
            }
            Card *oneCard = [[Card alloc] init];
            
            oneCard.cardColor = cardColorArray[i];
            oneCard.cardSize  = cardSizeArray[j];
            oneCard.cardPoint = j;
            oneCard.cardFlag  = 1;
            
            [_allCardsArray addObject:oneCard];
        }
    }
}

//洗牌
-(void)shuffleCards{
    //在整副牌中去除了大小王
//    [_allCardsArray[52] setCardFlag:0];
//    [_allCardsArray[53] setCardFlag:0];
    [_allCardsArray removeLastObject];
    [_allCardsArray removeLastObject];
    
    int index1 = 0;
    int index2 = 0;
    for (int count = 0; count <= 100000; count++) {
        index1 = arc4random()%52;//产生0~51(包含0和51)之间的随机数
        index2 = arc4random()%52;
        if (index1 == index2) {
            count--;
            continue;
        }
        [_allCardsArray exchangeObjectAtIndex:index1 withObjectAtIndex:index2];
    }
}

-(NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] init];
    
    for (Card *card in _allCardsArray) {
        [str appendFormat:@"\n%@", card];
    }
    return str;
}


@end
