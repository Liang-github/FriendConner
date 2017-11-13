//
//  BaseNavigationController.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 导航条字体颜色，字体大小
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    // 导航条背景颜色
    self.navigationBar.barTintColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:1];
    self.navigationBar.tintColor = [UIColor whiteColor];
}



@end
