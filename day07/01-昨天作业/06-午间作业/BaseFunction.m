//
//  BaseFunction.m
//  01-昨天作业
//
//  Created by qianfeng on 15-11-3.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "BaseFunction.h"

@implementation BaseFunction

/**
 @"(键:abc,值:ABC)(键:efg,值:EFG)(键:esfeg,值:EjugeG)"
 
 "" 键:abc  值:ABC ""  键:efg   值:EFG ""   键:esfeg   值:EjugeG ""
 
 
  abc ABC efg EFG)(键:esfeg,值:EjugeG)
 
 键:abc,值:    键:efg,值:EFG    键:esfeg,值:EjugeG
 键  abc  值  ""
 
 */
+(NSDictionary *)dictionaryFromString:(NSString *)str{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    NSString *newStr = [str substringWithRange:NSMakeRange(1, [str length] - 2)];
    NSArray *array1 = [newStr componentsSeparatedByString:@")("];
    for (NSString *s in array1) {
        NSArray *arrat2 = [s componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@":,"]];
        
        [dic setObject:arrat2[3] forKey:arrat2[1]];
    }
    return dic;
}
@end






