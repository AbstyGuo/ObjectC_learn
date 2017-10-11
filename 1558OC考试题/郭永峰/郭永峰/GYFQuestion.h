//
//  GYFQuestion.h
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GYFQuestion : NSObject

/*1
 (15分)
 查找子串出现次数
 返回字符串s中出现子串substring的次数
 例
 s:@"sunck is a very very good man" substring:@"very"  返回:2
 s:@"ababasunck abais"  substring:@"aba"  返回:3
 */
-(NSInteger)countOfSubstring:(NSString *)substring inString:(NSString *)s;

/*2
 (15)
 将字符串时间转为NSDate类型
 字符串时间是以下几种样式中的某一种
 yyyy-MM-dd HH:mm:ss.SSS
 yyyy-MM-dd HH:mm:ss
 yyyy-MM-dd
 
 返回转换后的NSDate
 
 例
 输入的样式可能是2015-10-19或2015-10-19 02:45:12或2015-10-19 10:23:13.122
 */
-(NSDate *)dateFromString:(NSString *)dateString;

@end
