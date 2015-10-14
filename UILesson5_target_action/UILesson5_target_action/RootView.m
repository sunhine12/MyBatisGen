//
//  RootView.m
//  UILesson5_target_action
//
//  Created by lanou3g on 15/8/31.
//  Copyright (c) 2015年 com.lanou3g. All rights reserved.
//

#import "RootView.h"
#import "ButtonView.h"
#import "ClickView.h"
@implementation RootView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self p_setupView];
    }
    return self;
}
-(void)p_setupView
{
    self.backgroundColor = [UIColor orangeColor];
    self.bv = [[ButtonView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self addSubview:_bv];
    
    self.cv = [[ClickView alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
    [self addSubview:_cv];
}







@end
