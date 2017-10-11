//
//  PathManager.h
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
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


/*
 将一个任意字符串数组中的元素组合成一个合法路径（10分）
 已知一个数组存放的是目录名字，要求组合成一个合法路径
 比如:数组中存放的是 home qianfeng iOS
 返回  /home/qiangfeng/iOS
 */
+(NSString *)joinPathOfComponents:(NSArray *)comp;



/*
 将C++的标识符转成OC的标识符(20分)
 C++的标识符和OC一样由数字字母下划线组成，打头的不是数字。当标识符超过一个单词，
 C++采用全字母小写，单词间用下划线连接的书写规范，如:
 qian_feng
 OC采用除第一个单词外，其余单词首字母大写的书写规范，如：
 qianFeng
 
 //传入任意C++标识符，返回OC标识符
 
 例如
 输入:qian_feng_hu_lian     返回qianFengHuLian
 
 
 
 */
+(NSString *)objcIdentifierFromCppIdentifier:(NSString *)idf;








//  6-4+7-20/2*98/2-3+4

//  6 1 4 7 2 10 2 98 2 3 4
//  -  * + - * / * / - +
+(NSString *)resultFromExpression:(NSString *)expression;



@end
