//
//  FriendLineCellModel.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/10.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendLineCellModel : NSObject

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *headImgName;
@property (nonatomic, copy) NSString *msgContent;
@property (nonatomic, strong) NSArray *picNameArray;
@property (nonatomic, strong) NSArray *likeNameArray;
@property (nonatomic, strong) NSArray *commentArray;
@property (nonatomic, assign) BOOL isLiked;
@property (nonatomic, assign) BOOL isExpand;
@end
