//
//  FirstViewController.h
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondViewController.h"

@interface FirstViewController : NSObject<SecondViewControllerDelegate>
{
    BOOL _isOn;
}
//-(void)on;
//-(void)off;

-(void)show;
@end
