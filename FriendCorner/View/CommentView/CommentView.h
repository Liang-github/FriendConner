//
//  CommentView.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CommentModel;
@class FriendLineCellModel;

@protocol CommentViewDelegate <NSObject>

- (void)didClickRowWithFirstIndexPath:(NSIndexPath *)firIndexPath secondIndex:(NSIndexPath *)secIndexPath;
@end
@interface CommentView : UIView
- (instancetype)init;
- (void)configCellWithModel:(FriendLineCellModel *)model indexPath:(NSIndexPath *)indexPath;

@property (nonatomic, weak) id <CommentViewDelegate>delegate;
@end
