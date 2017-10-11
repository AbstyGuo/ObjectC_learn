//
//  main.m
//  05-解析XML文件
//
//  Created by qianfeng on 15-11-6.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //1、找到文件
        NSString *path = @"/Users/qianfeng/Desktop/ios1558/day10/xml.txt";
        
        
        //2、读数据
        NSData *data = [NSData dataWithContentsOfFile:path options:0 error:nil];
        
        
        
        /*3
         3.1、将解析XML的类文件添加进来
         
         3.2、工程 》 Build Phases 》 Link Binary With Libraries 》 + 》 搜索处输入"libxml2" 》 选中"libxml2.dylib" 》 Add
         
         3.3、工程 》 Build Settings 》 ALL 》 搜索处输入"Header Search Paths" 》 双击"Header Search Paths"的后面 》 + 》 输入"/usr/include/libxml2" 》 点击其他空白处退出
         
         3.4、工程 》 Build Phases 》 Compile Source 》 双击GDataXMLNode.m的后面 》 输入"-fno-objc-arc" 》 点击其他空白处退出
         
         3.5、导入头文件 #import "GDataXMLNode.h"
         
         3.6、编译
        */
        
        
        
        //4、将数据放入解析环境
        GDataXMLDocument *document = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        
        
        //5、通过Xpath语法取出对应路径下的节点集
        NSArray *array = [document nodesForXPath:@"//systemConfig" error:nil];
        //数组中放的是systemConfig节点的集合，因为systemConfig可以有多个
        NSLog(@"array = %@", array);
        
        
        //6、取出对应的节点
        //GDataXMLElement:一个节点
//        for (GDataXMLElement *element in array) {
//            
//        }
        GDataXMLElement *element = array[0];
        NSLog(@"element = %@", element);
        NSLog(@"element = %@", [element name]);
        
        //7、在节点中取对应子节点集
        NSArray *subArray = [element elementsForName:@"CityName"];
        NSLog(@"subArray = %@", subArray);
        
        
        //8、取出对应的数据节点
//        for (GDataXMLElement *subElement in subArray) {
//            
//        }
        GDataXMLElement *subElement = subArray[0];
        
        
        //9、取数据
        NSString *cityName = [subElement stringValue];
        NSLog(@"cityName = %@", cityName);
        
        
        //10、取节点名称
        NSString *nodeName = [subElement name];
        NSLog(@"nodeName = %@", nodeName);
        
    }
    return 0;
}

