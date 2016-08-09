//
//  ViewController.m
//  delegatePassValue
//
//  Created by bbigcd on 16/8/9.
//  Copyright © 2016年 cd. All rights reserved.
//

#import "ViewController.h"
#import "DelegateViewController.h"
@interface ViewController ()<PushDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    DelegateViewController *vc = [[DelegateViewController alloc] init];
    [self didPushDelegateViewController:vc];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didPushDelegateViewController:(DelegateViewController *)vc
{
    NSLog(@"进入下一个控制器");
    UILabel *label = [[UILabel alloc] init];
    [label setFrame:CGRectMake(100, 100, 40, 20)];
    [label setText:@"恩"];
    [vc.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
