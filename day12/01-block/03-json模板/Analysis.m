//
//  Analysis.m
//  01-block
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Analysis.h"
#import "CdModel.h"

@implementation Analysis
-(id)init{
    if (self = [super init]) {
        _modelArray = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)JSONAnalysisFromFile:(NSString *)path{
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    //读出最外层数据
    NSDictionary *rootDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    
    //*********找数据数组********
    NSDictionary *secondDic = rootDic[@"CATALOG"];
    NSArray *dataArray = secondDic[@"CD"];
    
    
    //处理数据数组，将字典转为模型
    for (NSDictionary *dic in dataArray) {
        CdModel *model = [CdModel modelWithDictionary:dic];
        
        [_modelArray addObject:model];
    }
}

-(NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] init];
    
    for (CdModel *m in _modelArray) {
        [str appendFormat:@"\n%@", m];
    }
    return str;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_modelArray forKey:@"modeArray"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _modelArray = [aDecoder decodeObjectForKey:@"modeArray"];
    }
    return self;
}
@end
