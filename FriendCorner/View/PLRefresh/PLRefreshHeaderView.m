//
//  PLRefreshHeaderView.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "PLRefreshHeaderView.h"

@implementation PLRefreshHeaderView

{
    CABasicAnimation *_rotateAnimation;
    UIImageView *_imageView;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AlbumReflashIcon"]];
        self.bounds = _imageView.bounds;
        self.center = CGPointMake(40, 40);
        
        [self addSubview:_imageView];
        [self bringSubviewToFront:_imageView];
        _rotateAnimation = [[CABasicAnimation alloc] init];
        _rotateAnimation.keyPath = @"transform.rotation.z";
        _rotateAnimation.fromValue = @0;
        _rotateAnimation.toValue = @(M_PI*2);
        _rotateAnimation.duration = 1;
        _rotateAnimation.repeatCount = MAXFLOAT;
    }
    return self;
}
- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    // 子类实现
    if (keyPath != PLBaseRefreshViewObserveKeyPath) {
        return;
    }
    float offsetY = self.scrollView.contentOffset.y;
    
    if (offsetY > -60) {
        if (self.scrollView.isDragging && self.refreshState != PLRefreshStatePulling) {
            self.refreshState = PLRefreshStatePulling;
        }
    } else {
        if (!self.scrollView.isDragging && self.refreshState == PLRefreshStatePulling) {
            self.refreshState = PLRefreshStateRefreshing;
        }
    }
    CGFloat rotateValue = offsetY/50.0*M_PI;
    CGAffineTransform transform = CGAffineTransformIdentity;
    if (self.refreshState == PLRefreshStateRefreshing) {
        transform = CGAffineTransformTranslate(transform, 0, offsetY + 60);
    } else {
        if (offsetY < -60) {
            transform = CGAffineTransformTranslate(transform, 0, offsetY + 60);
        }
    }
    transform = CGAffineTransformRotate(transform, rotateValue);
    _imageView.transform = transform;
}
@end
