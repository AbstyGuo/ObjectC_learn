//
//  Analysis.h
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Analysis : NSObject<NSCoding>
{
    //模型数组
    NSMutableArray * _modelArray;
}

-(void)JSONAnalysisFromFile:(NSString *)path;
@end
