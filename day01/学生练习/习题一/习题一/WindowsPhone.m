//
//  WindowsPhone.m
//  习题一
//
//  Created by 碧海 on 14-8-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "WindowsPhone.h"

@implementation WindowsPhone

-(void)setInch:(double)inch{
    _inch = inch;
}
-(double)inch{
    return _inch;
}

-(void)setColor:(Color)color{
    _color = color;
}
-(Color)color{
    return _color;
}

-(void)setMemory:(int)memory{
    _memory = memory;
}
-(int)memory{
    return _memory;
}

-(void)setCpu:(Cpu)cpu{
    _cpu = cpu;
}
-(Cpu)cpu{
    return _cpu;
}
//播放音乐
-(void)playMusic{
    NSLog(@"玩音乐");
}
//看电影
-(void)watchVideo{
    NSLog(@"看电影");
}
//写邮件
-(void)writeEmail{
    NSLog(@"写邮件");
}
//拍照片
-(void)takePicture{
    NSLog(@"拍照片");
}
@end
