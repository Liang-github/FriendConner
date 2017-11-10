//
//  FriendHeaderView.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "FriendHeaderView.h"

@implementation FriendHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithDisplayP3Red:50/255.0 green:50/255.0 blue:50/255.0 alpha:1];
        UIImageView *backgroundImageView = [UIImageView new];
        backgroundImageView.image = [UIImage imageNamed:@"pbg.jpg"];
        [self addSubview:backgroundImageView];
        backgroundImageView.frame = CGRectMake(0, 64, ScreenWidth, frame.size.height - 64 - 20);
        
        UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 20, ScreenWidth, 20)];
        whiteView.backgroundColor = [UIColor whiteColor];
        [self addSubview:whiteView];
        
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(ScreenWidth - 100, frame.size.height - 80, 80, 80);
        iconView.image = [UIImage imageNamed:@"icon1"];
        iconView.layer.borderColor = [UIColor whiteColor].CGColor;
        iconView.layer.borderWidth = 2;
        [self addSubview:iconView];
        
        UILabel *nameLabel = [UILabel new];
        nameLabel.frame = CGRectMake(ScreenWidth - 220, iconView.sd_y + 20, 100, 30);
        nameLabel.text = @"Sky";
        nameLabel.textColor = [UIColor whiteColor];
        nameLabel.textAlignment = NSTextAlignmentRight;
        nameLabel.font = [UIFont boldSystemFontOfSize:15];
        [self addSubview:nameLabel];
    }
    return self;
}

@end
