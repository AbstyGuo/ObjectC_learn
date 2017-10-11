//
//  Analysis.h
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Analysis : NSObject
{
    NSMutableArray *_modelArray;
}


-(void)JSONAnalysisFromFile:(NSString *)path;

@end
