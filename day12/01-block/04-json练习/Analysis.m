//
//  Analysis.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Analysis.h"
#import "MenuModel.h"

@implementation Analysis
-(id)init{
    if (self = [super init]) {
        _modelArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)JSONAnalysisFromFile:(NSString *)path{
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSDictionary *rootDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    
    //数组数组
    NSDictionary *secondDic = rootDic[@"breakfast_menu"];
    NSArray *dataArray = secondDic[@"food"];
    
    
    for (NSDictionary *dic in dataArray) {
        MenuModel *model = [MenuModel modelWithDictionary:dic];
        
        [_modelArray addObject:model];
    }
}
-(NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] init];
    
    for (MenuModel *m in _modelArray) {
        [str appendFormat:@"\n%@", m];
    }
    return str;
}
@end
