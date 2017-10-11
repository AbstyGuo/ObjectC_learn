//
//  main.m
//  协议代理考题
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        FirstViewController  *fvc = [[FirstViewController alloc] init];
        SecondViewController *svc = [[SecondViewController alloc] init];
        
        svc.delegate=fvc;
        
        NSLog(@"界面2执行了[svc open]");
        [svc open];
        NSLog(@"界面1执行了[fvc show]");
        [fvc show];
        NSLog(@"********************");
        NSLog(@"界面2执行了[svc close]");
        [svc close];
        NSLog(@"界面1执行了[fvc show]");
        [fvc show];

        
    }
    return 0;
}

