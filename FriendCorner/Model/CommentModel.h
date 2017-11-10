//
//  CommentModel.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommentModel : NSObject

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *replyUserName;
@property (nonatomic, copy) NSString *content;

@end
