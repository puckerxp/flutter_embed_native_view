//
// Created by 李朴之 on 2019-08-22.
// Copyright (c) 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

@interface MyPlatformViewObject : NSObject <FlutterPlatformView>
- (id)initWithFrame:(CGRect)frame viewId:(int64_t)viewId args:(id)args;
@end