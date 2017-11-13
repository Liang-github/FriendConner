//
//  FriendLineCell.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FriendLineCellModel;
@class OperationView;

@protocol FridenLineCellDelegate <NSObject>
- (void)didClickedMoreBtn:(UIButton *)btn indexPath:(NSIndexPath *)indexPath;
- (void)didClickImageViewWithCurrentView:(UIImageView *)imageView imageViewArray:(NSMutableArray *)array imageSuperView:(UIView *)view indexPath:(NSIndexPath *)indexPath;
- (void)dicClickenLikeBtnWithIndexPath:(NSIndexPath *)indexPath;
- (void)didClickCommentBtnWithIndexPath:(NSIndexPath *)indexPath;
- (void)didClickRowWithFirstIndexPath:(NSIndexPath *)firIndexPath secondIndex:(NSIndexPath *)secIndexPath;
@end
@interface FriendLineCell : UITableViewCell

@property (nonatomic, strong) OperationView *operationView;
@property (nonatomic, weak) id <FridenLineCellDelegate>delegate;
- (void)configCellWithModel:(FriendLineCellModel *)model indexPath:(NSIndexPath *)indexPath;
@end
