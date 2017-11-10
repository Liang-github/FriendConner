//
//  PLRefreshBaseView.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "PLRefreshBaseView.h"

NSString *const PLBaseRefreshViewObserveKeyPath = @"contentOffseet";

@implementation PLRefreshBaseView

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
    
    [self.superview removeObserver:self forKeyPath:PLBaseRefreshViewObserveKeyPath];
    [newSuperview addObserver:self forKeyPath:PLBaseRefreshViewObserveKeyPath options:NSKeyValueObservingOptionNew context:nil];
    _scrollView = (UIScrollView *)newSuperview;
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
}
@end
