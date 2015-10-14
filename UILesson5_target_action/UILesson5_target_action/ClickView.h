//
//  ClickView.h
//  UILesson5_target_action
//
//  Created by lanou3g on 15/8/31.
//  Copyright (c) 2015年 com.lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClickView : UIView
@property (nonatomic,assign) id target;
@property (nonatomic,assign) SEL action;
-(void)clickAction:(id)target action:(SEL)action;
@end
