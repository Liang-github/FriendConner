//
//  CommentCell.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CommentModel;
@interface CommentCell : UITableViewCell
- (void)configCellWithModel:(CommentModel *)model;
@end
