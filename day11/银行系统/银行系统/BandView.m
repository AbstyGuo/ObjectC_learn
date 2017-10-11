//
//  BandView.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "BandView.h"

@implementation BandView
-(void)loginView{
    NSLog(@"****************************************************");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                   欢 迎 登 录                     *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"****************************************************");
}
-(void)functionView{
    NSLog(@"****************************************************");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"*        开户(a)                    查询(b)         *");
    NSLog(@"*        存款(c)                    取款(d)         *");
    NSLog(@"*                                                  *");
    NSLog(@"*        转账(e)                    改密(f)         *");
    NSLog(@"*        锁定(g)                    解锁(h)         *");
    NSLog(@"*        补卡(i)                    销户(j)         *");
    NSLog(@"*                                                  *");
    NSLog(@"*                     退出(k)                       *");
    NSLog(@"*                                                  *");
    NSLog(@"*                                                  *");
    NSLog(@"****************************************************");
}


-(BOOL)loginFun{
    [self loginView];
    char sysNum[10] = "";
    char sysPasswd[10] = "";
    
    NSLog(@"请输入系统账号:");
    scanf("%s", sysNum);
    if (![[NSString stringWithUTF8String:sysNum] isEqualToString:@"1"]) {
        return NO;
    }
    
    NSLog(@"请输入系统密码:");
    scanf("%s", sysPasswd);
    if (![[NSString stringWithUTF8String:sysPasswd] isEqualToString:@"1"]) {
        return NO;
    }
    return YES;
}

+(NSUInteger)flagWithOperate:(NSString *)operate{
    NSArray *array = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k"];
    
    return [array indexOfObject:operate];
}





-(void)willOpenCard{
    if ([_delegate respondsToSelector:@selector(openCard)]) {
        [_delegate performSelector:@selector(openCard)];
    }
}
-(void)willSearchMoney{
    if ([_delegate respondsToSelector:@selector(searchMoney)]) {
        [_delegate performSelector:@selector(searchMoney)];
    }
}
@end
