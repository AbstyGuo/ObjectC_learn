//
//  main.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WindowsPhone.h"
int main(int argc, const char * argv[])
{
    Cpu cpu = {4,1.5};
    cpu._cpuModel=3;
    cpu._cpuSize=2.4;
   // cpu = {3,4};
    
    WindowsPhone *phone = [WindowsPhone new];

    [phone setInch:3.5];
    [phone setColor:colorWithTuHaoJin];
    [phone setCpu:cpu];
    [phone setMemory:512];

    Cpu cpu1 = [phone cpu];

    NSLog(@"手机尺寸:%.1f英寸,颜色:%i,cpu是%i核,%.1f G处理器,内存是%i M ",[phone inch],[phone color],cpu1._cpuModel,cpu1._cpuSize,[phone memory]);

    [phone playMusic];
    [phone watchVideo];
    [phone writeEmail];
    [phone takePicture];

    return 0;
}

