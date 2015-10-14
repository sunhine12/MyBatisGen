//
//  ClickView.m
//  UILesson5_target_action
//
//  Created by lanou3g on 15/8/31.
//  Copyright (c) 2015年 com.lanou3g. All rights reserved.
//

#import "ClickView.h"

@implementation ClickView

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
    self.backgroundColor = [UIColor blueColor];
    
}
-(void)clickAction:(id)target action:(SEL)action
{
    _target = target;
    _action = action;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_target performSelector:_action withObject:self];
}







@end
