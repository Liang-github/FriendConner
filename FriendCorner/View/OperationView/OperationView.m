//
//  OperationView.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "OperationView.h"

@implementation OperationView

{
    UIButton *_likeButton;
    UIButton *_commentButton;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 5;
        self.backgroundColor = SHOWCOLOR(69, 74, 76);
        _likeButton = [self creatButtonWithTitle:@"赞" image:[UIImage imageNamed:@"AlbumLike"] selImage:nil target:self selector:@selector(likeButtonClicked)];
        [self addSubview:_likeButton];
        _commentButton = [self creatButtonWithTitle:@"评论" image:[UIImage imageNamed:@"AlbumComment"] selImage:nil target:self selector:@selector(commentBtnClicked)];
        [self addSubview:_commentButton];
        UIView *centerLine = [UIView new];
        centerLine.backgroundColor = [UIColor grayColor];
        [self addSubview:centerLine];
        
        [_likeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.left.equalTo(self).offset(5);
            make.bottom.equalTo(self);
            make.width.mas_equalTo(80);
        }];
        [centerLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(5);
            make.left.equalTo(_likeButton.mas_right).offset(5);
            make.bottom.equalTo(self);
            make.width.mas_equalTo(1);
        }];
        [_commentButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.left.mas_equalTo(centerLine.mas_right).offset(5);
            make.bottom.equalTo(self);
            make.width.mas_equalTo(80);
        }];
    }
    return self;
}
- (UIButton *)creatButtonWithTitle:(NSString *)title image:(UIImage *)image selImage:(UIImage *)selImage target:(id)target selector:(SEL)sel {
    UIButton *btn = [UIButton new];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selImage forState:UIControlStateSelected];
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
    return btn;
}
- (void)setPraiseString:(NSString *)praiseString {
    _praiseString = praiseString;
    [_likeButton setTitle:praiseString forState:UIControlStateNormal];
}
- (void)likeButtonClicked {
    if (self.likeBtnClicked) {
        self.likeBtnClicked();
    }
}
- (void)setIsShowing:(BOOL)isShowing {
    _isShowing = isShowing;
    if (isShowing) {
        [self mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(180);
        }];
        [UIView animateWithDuration:0.2 animations:^{
            [self.superview layoutIfNeeded];
        }];
    } else {
        [self mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(0);
        }];
        [UIView animateWithDuration:0.2 animations:^{
            [self.superview layoutIfNeeded];
        }];
    }
}
@end
