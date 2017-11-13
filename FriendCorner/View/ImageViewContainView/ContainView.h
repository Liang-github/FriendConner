//
//  ContainView.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FriendLineCellModel.h"

@protocol ContainViewDelegate <NSObject>

- (void)didClickImageViewWithCurrentImageView:(UIImageView *)imageView imageViewArray:(NSMutableArray *)array imageSuperView:(UIView *)superView;

@end
@interface ContainView : UIView

@property (nonatomic, strong) FriendLineCellModel *model;
@property (nonatomic, weak) id <ContainViewDelegate>delegate;
@end
