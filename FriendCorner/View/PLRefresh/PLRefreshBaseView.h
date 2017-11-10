//
//  PLRefreshBaseView.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

UIKIT_EXTERN NSString *const PLBaseRefreshViewObserveKeyPath;

typedef NS_ENUM(NSInteger, PLRefreshState) {
    PLRefreshStatePulling,
    PLRefreshStateNormal,
    PLRefreshStateRefreshing
};

@interface PLRefreshBaseView : UIView

@property (nonatomic, assign) PLRefreshState refreshState;
@property (nonatomic, copy) void(^callbackBlock)();
@property (nonatomic, strong) UIScrollView *scrollView;

@end
