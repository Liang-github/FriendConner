//
//  UIScrollView+PLRefresh.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (PLRefresh)

- (void)addRefreshHeaderViewWithCallback:(void(^)(void))callback;
- (void)beginHeaderRefresh;
- (void)headerEndRefreshing;
@end
