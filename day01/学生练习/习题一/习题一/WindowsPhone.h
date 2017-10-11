//
//  WindowsPhone.h
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    colorWithWhite,
    colorWithYellow,
    colorWithTuHaoJin
}Color;

typedef struct{
    int _cpuModel;//核
    double _cpuSize;
}Cpu;

@interface WindowsPhone : NSObject
{
    double _inch;//尺寸
    int _memory;//内存
    Color _color;//颜色
    Cpu _cpu;//处理器
}

-(void)setInch:(double)inch;
-(double)inch;

-(void)setColor:(Color)color;
-(Color)color;

-(void)setMemory:(int)memory;
-(int)memory;

-(void)setCpu:(Cpu)cpu;
-(Cpu)cpu;

//播放音乐
-(void)playMusic;
//看电影
-(void)watchVideo;
//写邮件
-(void)writeEmail;
//拍照片
-(void)takePicture;
@end
