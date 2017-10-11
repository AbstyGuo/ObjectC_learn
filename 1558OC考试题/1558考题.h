/*
 【注意】答题前应阅读答题要求，必须按照要求答题，答题结束后压缩文件提交到在线答题系统，我的代码库。
 1)所有题目编写在一个工程中，工程名为考生姓名全中文。如"余浩"
 2)在第一个项目中创建一个Question类，以考生姓名全拼缩写为前缀。如"YHQuestion”，1~2题目都作为该类的一个方法。
 3)答题时在main函数中做各种测试，最后结果main函数中要有每一个题的测试
 NSLog(@“****************第一题开始******************”);
 第一题结果的打印输出
 NSLog(@“****************第一题结束******************”);
 4)考试期间不许交头接耳，雷同卷零分处理！
 */


/*1
 (15分)
 查找子串出现次数
 返回字符串s中出现子串substring的次数
 例
 s:@"sunck is a very very good man" substring:@"very"  返回:2
 s:@"ababasunck abais"  substring:@"aba"  返回:3
*/
-(NSInteger)countOfSubstring:(NSString *)substring inString:(NSString *)s;

/*2
 (15)
 将字符串时间转为NSDate类型
 字符串时间是以下几种样式中的某一种
 yyyy-MM-dd HH:mm:ss.SSS
 yyyy-MM-dd HH:mm:ss
 yyyy-MM-dd
 
 返回转换后的NSDate
 
 例
 输入的样式可能是2015-10-19或2015-10-19 02:45:12或2015-10-19 10:23:13.122
*/
-(NSDate)dateFromString:(NSString *)dateString;






/*3
 (15分)
 新建一个项目，项目名为"分类考题"
 给数组类添加方法，该方法可以返回数组元素为数字字符串的元素值之和。
 例
 NSArray *array = @[@"1", @"2", @"3"];
 NSUInteger ret = [array sumWithElement]
 NSLog(@"ret = %lu", ret);
 */
-(NSUInteger)sumWithElement;




/*4
 (20)
 新建一个项目，项目名为"协议代理考题"
 创建两个界面的类（FirstViewController、SecondViewController）
 界面1
 属性  BOOL isOn;
 方法
 开启，关闭（被动）on off
 显示当前状态（show）
 
 界面2
 方法：
 开启 open
 关闭 close
 当界面2执行开启或关闭这两个方法，委托界面1，修改isOn的值。
 
 
 *********main中的测试方法***********
 FirstViewController  *fvc = [[FirstViewController alloc] init];
 SecondViewController *svc = [[SecondViewController alloc] init];
 
 //设置代理关系(这一步自己写)
 
 NSLog(@"界面2执行了");
 [svc open];
 NSLog(@"界面1执行了");
 [fvc show];
 NSLog(@"********************");
 NSLog(@"界面2执行了");
 [svc close];
 NSLog(@"界面1执行了");
 [fvc show];
 
 */



/*5
 (35)
 新建一个项目，项目名为"Json考题"
 解析JSON文件，建立数据模型存储数据。将存储模型数组的对象进行归档，并解档后打印新对象
 
 提交时json文件路径为/Users/qianfeng/Desktop/test.json;
 提交时归档文件路径为/Users/qianfeng/Desktop/1558归档文件/余浩/guidang.txt;
*/


