//
//  ViewController.m
//  shengdao
//
//  Created by apple on 17/2/14.
//  Copyright © 2017年 apple. All rights reserved.

//外包一个测试下项目
//

#import "ViewController.h"

#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define kScreenheight  [[UIScreen mainScreen] bounds].size.height
#define colorRGB(r,g,b)  [UIColor colorWithRed:r green:g blue:b alpha:1]

@interface ViewController (){

    NSArray *_optionTitles;

    UIButton *_btnOption;
    
    
    NSArray *_22,*_23,*_52,*_53,*_62,*_63,*_72;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    1.红包转发：
//    开始转发：设置开关
//    便捷按钮：设置开关
//    手动转发：设置开关
//    2.秒抢模式：
//    本机秒抢：设置开关
//    转发包数：设置选卡（转发第一包，转发包数第二包）
//    扭转抢包数据：设置选卡（扭转第一包）
//    3.发包详情：
//    红包个数：填写
//    红包金额：填写
//    自定义红包语：填写
//    4.基础设置：
//    发送最大次数：填写
//    金额安全值：填写
//    小群ID：填写
//    转发到的群ID：填写
//    5.排雷玩法：
//    排雷玩法：设置开关
//    玩法选择：设置选卡（1.排雷：角玩法   2.排雷：分玩法   3.排雷：元玩法   4.排雷：分角玩法）
//    雷位置：设置选卡（1.后置雷  2.智能识别   3.前置雷）
//    6：接龙玩法：
//    接龙玩法：设置开关
//    玩法选择：设置选卡（1.双尾玩法   2.金额玩法   3.单尾玩法）
//    规则选择：设置选卡（1.大于条件  2.小于条件）
//    转发条件：填写
//    7.牛牛玩法：
//    牛牛玩法：设置开关
//    玩法选择：设置选卡（1.三尾相加  2.双尾相加   3.单尾）
//    转发牛值：填写
//    8.授权码：
//    授权码：填写
    
//    _sectionTitle=[NSArray arrayWithObjects:@"  1.红包转发",@"  2.秒抢模式",@"  3.发包详情",@"  4.基础设置",@"  5.排雷玩法",
//                   @"  6.接龙玩法",@"  7.牛牛玩法",@"  8.授权码", nil];
//
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"DataInfo" ofType:@"plist"];
//    
//    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    _22= [NSArray arrayWithObjects:@"转发第一包",@"转发第二包", nil];
    _23= [NSArray arrayWithObjects:@"扭转第一包",@"扭转第二包", nil];
    _52= [NSArray arrayWithObjects:@"角玩法",@"分玩法",@"元玩法", @"分角玩法",nil];
    _53= [NSArray arrayWithObjects:@"后置雷",@"智能识别",@"前置雷", nil];
    _62= [NSArray arrayWithObjects:@"双尾玩法",@"金额玩法",@"单尾玩法", nil];
    _63= [NSArray arrayWithObjects:@"大于条件",@"小于条件", nil];
    _72= [NSArray arrayWithObjects:@"三尾相加",@"双尾相加",@"单尾", nil];
    

    self.hintLabel.text=@"使用本插件前，请阅读以下声明：\n本插件仅供学习和交流使用，严厉禁止用于非法用途，如有违反，本插件不负责任何后果。\n\n__扭转乾坤__";
}
    
    
- (IBAction)btnOptionsAction:(UIButton *)sender {
    
    _btnOption = sender;
    NSInteger tag = _btnOption.tag;

    if (tag == 22) {
        _optionTitles = _22;
    } else if (tag == 23){
        _optionTitles = _23;
    }else if (tag == 52){
        _optionTitles = _52;
    }else if (tag == 53){
        _optionTitles = _53;
    }else if (tag == 62){
        _optionTitles = _62;
    }else if (tag == 63){
        _optionTitles = _63;
    }else if (tag == 72){
        _optionTitles = _72;
    }
    UIAlertController *alertVC=[UIAlertController alertControllerWithTitle:@"选择" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    for (NSString *title in _optionTitles) {
        [alertVC addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [_btnOption setTitle:action.title forState:UIControlStateNormal];
            
        }]];
    }
    [alertVC addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alertVC animated:YES completion:nil];
}
    
- (IBAction)switchSelectAction:(UISwitch *)sender {
    
//    NSLog(@"%ld==",sender.tag);
    
      NSLog(@"%@",sender.isOn ?@"YES":@"NO");//打印BOOL型数据YES
}
    
    
//    wechat,
//    weixin

    


- (IBAction)openWeixin:(UIBarButtonItem *)sender {
    NSLog(@"打开微信");
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"weixin://"]];
}
- (IBAction)moreFunction:(UIBarButtonItem *)sender {
    NSLog(@"更多功能");
}

@end
