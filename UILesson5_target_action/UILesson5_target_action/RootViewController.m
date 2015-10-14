//
//  RootViewController.m
//  UILesson5_target_action
//
//  Created by lanou3g on 15/8/31.
//  Copyright (c) 2015年 com.lanou3g. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
#import "ButtonView.h"
#import "ClickView.h"
@interface RootViewController ()
@property (nonatomic,retain) RootView *rv;
@end

@implementation RootViewController
-(void)loadView
{
    self.rv = [[RootView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.view = _rv;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.rv.bv myAddTargetAction:self action:@selector(buttonAction:)];
    [self.rv.cv clickAction:self action:@selector(clickAction:)];
}
-(void)buttonAction:(UIView *)sender
{
    NSLog(@"2秒就好");
}
-(void)clickAction:(UIView *)sender
{
    sender.backgroundColor =  [UIColor colorWithRed:arc4random() % 256 /255.0 green:arc4random() % 256 /255.0 blue:arc4random() % 256 /255.0 alpha:1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
