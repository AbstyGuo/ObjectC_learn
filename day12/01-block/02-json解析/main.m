//
//  main.m
//  02-json解析
//
//  Created by qianfeng on 15-11-10.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /**
         Json:一种保存数据的格式
         
         可以保存本地的json文件，也可以将json串进行传输
         
         通常将Json称为轻量级的传输方式
         
         
         Json和XML
         Json效率更高
         XML可读性强，易于操作
         
         
         Json数据基本构成：{}代表字典、[]代表数组、:代表键值对、,分隔两个部分
         */
        
        //解析Json文件
        
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day12/json相关/jsonUserList.json";
        
        //读取
        NSData *data = [NSData dataWithContentsOfFile:path];
        
        //读取json文件最外层的数据
//        NSJSONReadingMutableContainers  字典或者数组
//        NSJSONReadingMutableLeaves      字符串
//        NSJSONReadingAllowFragments     不是数组或字典
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        //NSLog(@"dic = %@", dic);
        
        
        //将字典转成对应的模型存储，将数据转成模型，存储到一个数组中
        
        //为了保存模型的数组(模型数组)，这个数组一般定义为全局的
        NSMutableArray *modelArray = [[NSMutableArray alloc] init];
        
        
        
        
        
        //找到存储着需要转成模型的小字典(存在一个数组中)
        //数据数组
        NSArray *dataArray = dic[@"users"];
        
        
        
        
        //字典转模型（在数据数组中处理每一个小字典，将之转换成模型类的一个对象，存储在模型数组中）
        for (NSDictionary *d in dataArray) {
            UserModel *model = [UserModel modelWithDictionary:d];
            
            //模型放到模型数组里
            [modelArray addObject:model];
        }
        NSLog(@"%@", modelArray);
    }
    return 0;
}
/*午间作业：
 解析的过程写在一个解析类里面，类里面有我们的模型数组
 
 在mian中定义一个解析对象
 [obj 方法:json文件的路径];
 
 归档obj
 
 接档obj用newObj
 
 打印newObj
 
 */
