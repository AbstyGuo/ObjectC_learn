//
//  CardBox.h
//  扎金花
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface CardBox : NSObject <PersonDelegate>
{
    NSMutableArray *_allCardsArray;
}
-(NSMutableArray *)allCardsArray;


+(CardBox *)defaultBox;
+(void)deleteSign;


//洗牌
//-(void)shuffleCards;

@end
