//
//  main.m
//  01-昨天作业1
//
//  Created by qianfeng on 01-1-1.
//  Copyright (c) 2001年 sunck. All rights reserved.
//

/*工人讨薪
 A类、主动类、委托方：工人  Work
 需求：讨薪 askMoney
 
 B类、被动类、代理方：律师  Lawyer
 
 */

#import <Foundation/Foundation.h>
#import "Lawyer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Lawyer *law = [[Lawyer alloc] init];
        
        [law lawyerWork];
        
        
    }
    return 0;
}

