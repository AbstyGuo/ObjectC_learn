第1题：类的声明和实现、对象的创建
#import <Foundation/Foundation.h>
@interface Person : NSObject
{
//    要想让外界访问必须现公开属性
    @public
    int age;
//    声明成员变量时不能初始化
    double height = 1.55;
    
//    方法声明不能写在大括号中
    - (void)study;
}

//缺少@end
@end

@implementation Person
- (void)study
{
    NSLog(@"年龄为%d的人在学习", age);
}
@end

int main()
{
//    只能用指针接收
    Person *p = [Person new];
    p->age = 10;
    p->height = 1.78f;
    [p study];
    return 0;
}

第2题：方法的声明和实现
#import <Foundation/Foundation.h>
@interface Test : NSObject
//缺少冒号
- (int)addNum1:(int)num1 andNum2:(int)num2;
//多了一个冒号,没有参数就不用写冒号
- (double)pi:;
//在OC方法中小括号只用来括主数据类型
- (void)test();
@end

@implementation Test
- (int)addNum1:(int)num1 andNum2:(int)num2
{
    return num1 + num2;
}

- (double)pi
{
    return 3.14;
}

- (void)test
{
    
}
@end

int main()
{
    return 0;
}

第3题：方法和函数的区别
#import <Foundation/Foundation.h>
@interface Car : NSObject
{
    @public
    int wheels;
}
//方法只能存在于类当中
- (void)run;
- (void)test;
@end

@implementation Car
- (void)test
{
    NSLog(@"测试一下车子：%i", wheels);
}

//函数是不依赖于类的存在的
void run()
{
    NSLog(@"%i个轮子的车跑起来了", wheels);
}
@end

//类不能单独存在
- (void)haha
{
    NSLog(@"调用了haha");
}

int main()
{
    Car *c = [Car new];
    [c run];
    [c test];
//    对象方法只能用对象调用
//    [c test];
    test();
    haha();
    return 0;
}

4.对象方法类方法
#import <Foundation/Foundation.h>
@interface Person : NSObject
{
    int _age;
}
- (void)test1;
+ (void)test2;
@end

@implementation Person
- (void)test1
{
    NSLog(@"调用了test1方法");
}

+ (void)test2
{
    //类方法内部,self代表类,只能调用类方法
    [self test1];
    NSLog(@"调用了test2方法-%d", _age);
}
@end

int main()
{
    Person *p = [Person new];
    //test2是类方法,要用类来调
    [p test2];
    //test1是对象方法,要用对象来调
    [Person test1];
}
