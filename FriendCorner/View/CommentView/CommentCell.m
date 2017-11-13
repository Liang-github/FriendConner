//
//  CommentCell.m
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import "CommentCell.h"
#import "UITableViewCell+HYBMasonryAutoCellHeight.h"
#import "CommentModel.h"
#import "MLLinkLabel.h"

@interface CommentCell ()<MLLinkLabelDelegate>

@property (nonatomic, strong) MLLinkLabel *contentLabel;

@end
@implementation CommentCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentLabel = [[MLLinkLabel alloc] init];
        self.contentLabel.delegate = self;
        self.contentLabel.linkTextAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithRed:92/255.0 green:140/255.0 blue:255/255.0 alpha:1]};
        self.contentLabel.activeLinkTextAttributes = @{NSForegroundColorAttributeName:[UIColor redColor]};
        [self.contentView addSubview:self.contentLabel];
        
        self.contentLabel.numberOfLines = 0;
        self.contentLabel.font = [UIFont systemFontOfSize:14];
        
        self.contentLabel.preferredMaxLayoutWidth = ScreenWidth - 80;
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.contentView);
            make.top.mas_equalTo(self.contentView);
        }];
        self.hyb_lastViewInCell = self.contentLabel;
        self.hyb_bottomOffsetToCell = 5;
    }
    return self;
}
- (void)configCellWithModel:(CommentModel *)model {
    NSString *string = [NSString stringWithFormat:@"%@：%@",model.userName,model.content];
    if (model.replyUserName.length != 0) {
        string = [NSString stringWithFormat:@"%@回复%@：%@",model
                  .userName,model.replyUserName,model.content];
    }
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:string];
    [text setAttributes:@{NSLinkAttributeName:model.userName} range:[string rangeOfString:model.userName]];
    if (model.replyUserName.length != 0) {
        [text setAttributes:@{NSLinkAttributeName:model.replyUserName} range:[string rangeOfString:model.replyUserName]];
    }
    self.contentLabel.attributedText = text;
}
- (void)didClickLink:(MLLink *)link linkText:(NSString *)linkText linkLabel:(MLLinkLabel *)linkLabel {
    NSLog(@"点击了：%@",link.linkValue);
}
@end
