//
//  MyPlatformViewFactory.m
//  Runner
//
//  Created by 李朴之 on 2019/8/22.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "MyPlatformViewFactory.h"
#import "MyPlatformViewObject.h"

@implementation MyPlatformViewFactory
- (NSObject <FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args
{
    MyPlatformViewObject *myPlatformViewObject = [[MyPlatformViewObject alloc] initWithFrame:frame viewId:viewId args:args];
    return myPlatformViewObject;
}

@end
