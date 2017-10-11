//
//  SecondViewController.m
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

-(void)open{
    if ([_delegate respondsToSelector:@selector(on)]) {
        [_delegate performSelector:@selector(on)];
    }
}

-(void)close{
    if ([_delegate respondsToSelector:@selector(off)]) {
        [_delegate performSelector:@selector(off)];
    }
}





@end
