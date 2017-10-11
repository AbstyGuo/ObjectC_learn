//
//  SecondViewController.h
//  郭永峰
//
//  Created by student on 15-11-13.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SecondViewControllerDelegate <NSObject>
-(void)on;
-(void)off;
@end

@interface SecondViewController : NSObject
@property(nonatomic,assign) id<SecondViewControllerDelegate> delegate;

-(void)open;
-(void)close;

@end
