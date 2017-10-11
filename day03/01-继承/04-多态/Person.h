//
//  Person.h
//  01-继承
//
//  Created by qianfeng on 15-10-28.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Cat.h"
//#import "Dog.h"
#import "Animal.h"

@interface Person : NSObject
//-(void)feedCat:(Cat *)cat;
//-(void)feedDog:(Dog *)dog;

-(void)feedAnimal:(Animal *)animal;
@end
