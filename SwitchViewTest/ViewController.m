//
//  ViewController.m
//  SwitchViewTest
//
//  Created by 郭嘉 on 15/9/27.
//  Copyright (c) 2015年 郭嘉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UISwitch *defaultSwitch = [[UISwitch alloc] init];
    [defaultSwitch addTarget:self action:@selector(switchCornorRadius:) forControlEvents:UIControlEventValueChanged];
//    defaultSwitch.center = self.view.center;
    defaultSwitch.frame = CGRectMake(300, 100, 300, 80);
    defaultSwitch.on = YES;
//    defaultSwitch.thumbTintColor=[UIColor purpleColor];
//    defaultSwitch.onTintColor = [UIColor redColor];
//    defaultSwitch.tintColor = [UIColor redColor];
//    [defaultSwitch setOn:NO animated:YES];
    [self.view addSubview:defaultSwitch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)switchCornorRadius:(UISwitch *)sender{
    if (sender.on) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }else{
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"关闭" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
}
@end
