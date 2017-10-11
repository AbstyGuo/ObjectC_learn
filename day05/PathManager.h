//
//  PathManager.h
//  01-作业
//
//  Created by qianfeng on 15-10-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathManager : NSObject
/*
 1.判断是否是绝对路径
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 返回值：YES
 
 参数：Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 返回值：NO
 */
+(BOOL)isAbsolutePath:(NSString *)path;


/*
 2.删除路径最后的"/"
 返回值是删除后的结果
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 */
+(NSString *)deleteLastDiagonal:(NSString *)path;


/*
 3.取得路径path的最后的部分
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 返回值：kaizi
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 返回值：kaizi
 */
+(NSString *)getLastComponentWithPath:(NSString *)path;


/*
 4.删除路径path最后的部分
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串
 */
+(NSString *)deleteLastComponentWithPath:(NSString *)path;



/*
 5.在路径上追加路径
 参数：
 /Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/
 sunck
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/sunck
 
 参数：
 /Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 sunck
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi/sunck
 */
+(NSString *)newPathWithNormalPath:(NSString *)normal increasePath:(NSString *)increase;


/*
 6.取得文件的扩展名
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt/
 返回值：.txt
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
 返回值：.txt
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 返回值：nil
 */
+(NSString *)getFileExtensionWithPath:(NSString *)path;


/*
 7.删除文件的扩展名
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt/
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi
 */
+(NSString *)deleteFileExtensionWithPath:(NSString *)path;


/*
 8.取出里面多余的/（/只可能在开头多）
 参数：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt/
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
 
 参数：/////Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
 返回值：/Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
 */
+(NSString *)deleteDuplicateSlashWithPath:(NSString *)path;
@end
