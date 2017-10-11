//
//  Analysis.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Analysis.h"

@implementation Analysis
-(id)init{
    if (self = [super init]) {
        _modelsArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)JSONAnalysisFromFile:(NSString *)path{
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSDictionary *rootDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    for (NSString *key in rootDic) {
        NSArray *dataArray = rootDic[key];
        for (NSDictionary *dic in dataArray) {
            
        }
    }
}
@end
