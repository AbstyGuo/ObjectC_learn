//
//  FirstViewController.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

-(void)on{
    _isOn=YES;
}
-(void)off{
    _isOn=NO;
}

-(void)show{
    if (_isOn) {
        NSLog(@"此时是打开的，_isOn的值为%d",_isOn);
    }else
        NSLog(@"此时是关闭的，_isOn的值为%d",_isOn);
}

@end
