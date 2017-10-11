//
//  Band.h
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BandView.h"

@interface Band : NSObject <BandViewDelegate, NSCoding>
{
    NSMutableArray *_allCardsArray;
}
-(void)setAllCardsArray:(NSMutableArray *)allCardsArray;
-(NSMutableArray *)allCardsArray;


+(Band *)defaultBand;
+(void)deleteBand;
@end
