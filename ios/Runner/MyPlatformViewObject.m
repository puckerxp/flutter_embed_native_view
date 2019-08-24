//
// Created by 李朴之 on 2019-08-22.
// Copyright (c) 2019 The Chromium Authors. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import "MyPlatformViewObject.h"

@implementation MyPlatformViewObject
{
    CGRect _frame;
    int64_t _viewId;
    id _args;
    UILabel *_subLabel;
}

- (id)initWithFrame:(CGRect)frame viewId:(int64_t)viewId args:(id)args
{
    if (self = [super init])
    {
        _frame = frame;
        _viewId = viewId;
        _args = args;
    }
    return self;
}

- (UIView *)view
{
    UIView *myNativeView = [[UIView alloc] initWithFrame:_frame];
    myNativeView.backgroundColor = [UIColor purpleColor];

    _subLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 480, 200)];
    _subLabel.text = @"我是原生Label！！";
    _subLabel.textColor = [UIColor whiteColor];
    _subLabel.numberOfLines = 0;
    [myNativeView addSubview:_subLabel];

    UIButton *subBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [subBtn setFrame:CGRectMake(20, 120, 200, 64)];
    [subBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [subBtn setTitle:@"点我试试！" forState:UIControlStateNormal];
    subBtn.titleLabel.font = [UIFont boldSystemFontOfSize:25.0];
    [subBtn addTarget:self action:@selector(subBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [myNativeView addSubview:subBtn];

    return myNativeView;
}

- (void)subBtnClicked:(id)sender
{
    _subLabel.text = [NSString stringWithFormat:@"%@如果你觉得这篇文章有用，请给我点个赞吧！！", _subLabel.text];
}

@end
