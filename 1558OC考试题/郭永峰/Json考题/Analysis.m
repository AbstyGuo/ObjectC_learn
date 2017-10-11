//
//  Analysis.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "Analysis.h"
#import "AllAccountModel.h"

@implementation Analysis

-(id)init{
    if (self=[super init]) {
        _modelArray=[[NSMutableArray alloc]init];
    }
    return self;
}

-(void)JSONAnalysisFromFile:(NSString *)path{
    NSData * data =[NSData dataWithContentsOfFile:path];
    
    NSDictionary * rootDic =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSArray * dataArray =rootDic[@"allAccount"];
    
    //处理数据数组，将字典转为模型
    for (NSDictionary *dic in dataArray) {
        AllAccountModel * model =[AllAccountModel modelWithDictionary:dic];
        
        [_modelArray addObject:model];
    }
}

-(NSString *)description{
    NSMutableString * str=[[NSMutableString alloc]init];
    
    for (AllAccountModel * d in _modelArray) {
        [str appendFormat:@"%@",d];
    }
    return str;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_modelArray forKey:@"modelArray"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self =[super init]) {
        _modelArray=[aDecoder decodeObjectForKey:@"modelArray"];
    }
    return self;
}


@end
