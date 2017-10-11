//
//  Band.m
//  银行系统
//
//  Created by qianfeng on 15-11-9.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "Band.h"
#import "IdCard.h"
#import "PersonInfo.h"
#import "BandCard.h"

static Band *band = nil;
static NSUInteger bandCardBasic = 1000;

@implementation Band
-(id)init{
    if (self = [super init]) {
        _allCardsArray = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)setAllCardsArray:(NSMutableArray *)allCardsArray{
    _allCardsArray = allCardsArray;
}
-(NSMutableArray *)allCardsArray{
    return _allCardsArray;
}


+(Band *)defaultBand{
    @synchronized(self){
        if (band == nil) {
            band = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/qianfeng/Desktop/ios1558/day11/allUers"];
            if (band == nil) {
                band = [[Band alloc] init];
            }else{
                bandCardBasic = [[band.allCardsArray lastObject] cardNum] + 1;
            }
        }
    }
    return band;
}
+(id)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self){
        if (band == nil) {
            band = [super allocWithZone:zone];
        }
    }
    return band;
}
+(void)deleteBand{
    if (band) {
        band = nil;
    }
}



//开户
-(void)openCard{
    //NSLog(@"银行开户");
    //录入身份证信息
    IdCard *idCard = [[IdCard alloc] init];
    NSArray *array1 = @[@"姓名", @"性别", @"民族", @"出生年月", @"住址", @"公民身份证号", @"发证机关", @"有效期限", @"国籍"];
    NSArray *array2 = @[@"Name", @"Sex", @"Nation", @"DateOfBirth", @"Address", @"IdNum", @"Body", @"TimeLimit", @"Nationality"];
    int index = 0;
    for (NSString *str in array1) {
        NSLog(@"请输入%@", str);
        char arr[50] = "";
        scanf("%s", arr);
        NSString *func = [NSString stringWithFormat:@"set%@:", array2[index++]];
        SEL sel = NSSelectorFromString(func);
        [idCard performSelector:sel withObject:[NSString stringWithUTF8String:arr]];
    }
    
    
    //保存人的信息
    PersonInfo *onePerInfo = [[PersonInfo alloc] init];
    onePerInfo.idCard = idCard;
    onePerInfo.name   = idCard.name;
    NSLog(@"请输入手机号码");
    char arr1[20] = "";
    scanf("%s", arr1);
    onePerInfo.phoneNum = [NSString stringWithUTF8String:arr1];
    NSLog(@"请输入现住址");
    char arr2[20] = "";
    scanf("%s", arr2);
    onePerInfo.myAddress = [NSString stringWithUTF8String:arr2];
    
    
    //
    NSLog(@"请输入预制密码");
    NSUInteger passwd = 0;
    scanf("%lu", &passwd);
    //验证密码
    if (![Band testPasswd:passwd]) {
        NSLog(@"开卡失败");
        return;
    }
    
    
    //验证密码成功，可以开卡了
    NSLog(@"请输入预存款金额");
    NSUInteger money = 0;
    scanf("%lu", &money);
    
    BandCard *oneBandCard = [[BandCard alloc] init];
    oneBandCard.cardNum = bandCardBasic++;
    oneBandCard.cardPasswd = passwd;
    oneBandCard.cardMoney  = money;
    oneBandCard.perInfo    = onePerInfo;
    oneBandCard.cardFlag   = 1;
    
    [_allCardsArray addObject:oneBandCard];
    NSLog(@"请牢记卡号:%lu", oneBandCard.cardNum);
    NSLog(@"开户成功！返回主界面……");
}

-(void)searchMoney{
    BandCard *card = [self baseFunc];
    if (card == nil) {
        return;
    }
    NSLog(@"卡号:%lu  余额:%lu", card.cardNum, card.cardMoney);
}

-(BandCard *)baseFunc{
    //提示输入卡号
    NSUInteger cardNum = 0;
    NSLog(@"请输入银行卡账号");
    scanf("%lu", &cardNum);
    int flag = 0;
    int index = 0;
    for (BandCard *bandCard in _allCardsArray) {
        index++;
        if (cardNum == bandCard.cardNum) {
            flag = 1;
            break;
        }
    }
    if (flag == 0) {
        NSLog(@"没有此银行卡信息");
        return nil;
    }
    
    BandCard *card = _allCardsArray[index-1];
    
    //验证是否可用
    if (card.cardFlag == 0) {
        NSLog(@"此卡已经被锁定，请解锁后进行其他操作");
        return nil;
    }
    
    
    //验证密码
    if (![Band testPasswd:[card cardPasswd]]) {
        card.cardFlag = 0;
        NSLog(@"密码3此输入错误，此卡被锁定");
        return nil;
    }
    
    return card;
}



//验证密码
+(BOOL)testPasswd:(NSUInteger)reallyPasswd{
    NSUInteger passwd = 0;
    for (int i = 0; i < 3; i++) {
        NSLog(@"请输入密码");
        scanf("%lu", &passwd);
        if (passwd == reallyPasswd) {
            return YES;
        }
    }
    return NO;
}



- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_allCardsArray forKey:@"array"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _allCardsArray = [aDecoder decodeObjectForKey:@"array"];
    }
    return self;
}

@end
