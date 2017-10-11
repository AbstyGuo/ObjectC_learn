//
//  Friend.h
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FriendDelegate <NSObject>
-(void)accompanyGirlForMovie;
@end

@interface Friend : NSObject
@property (nonatomic, assign) id<FriendDelegate>delegate;

-(void)findHelp;
@end
