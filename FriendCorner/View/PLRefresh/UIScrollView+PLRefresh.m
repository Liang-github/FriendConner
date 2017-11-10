//
//  UIScrollView+PLRefresh.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "UIScrollView+PLRefresh.h"
#import "PLRefreshHeaderView.h"
#import <objc/runtime.h>

@interface UIScrollView ()

@property (nonatomic, strong) PLRefreshHeaderView *headerView;

@end
@implementation UIScrollView (PLRefresh)
static char ZJRefreshHeaderViewKey;

- (void)setHeaderView:(PLRefreshHeaderView *)headerView {
    [self willChangeValueForKey:@"ZJRefreshHeaderViewKey"];
    objc_setAssociatedObject(self, &ZJRefreshHeaderViewKey, headerView, OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"ZJRefreshHeaderViewKey"];
}
- (PLRefreshHeaderView *)headerView {
    return objc_getAssociatedObject(self, &ZJRefreshHeaderViewKey);
}
- (void)addRefreshHeaderViewWithCallback:(void (^)(void))callback {
    if (!self.headerView) {
        PLRefreshHeaderView *headerView = [[PLRefreshHeaderView alloc] init];
        headerView.callbackBlock = callback;
        
        [self addSubview:headerView];
        [self bringSubviewToFront:headerView];
        self.headerView = headerView;
    }
}
- (void)headerEndRefreshing {
    self.headerView.refreshState = PLRefreshStateNormal;
}
- (void)beginHeaderRefresh {
    self.headerView.refreshState = PLRefreshStateRefreshing;
}
@end
