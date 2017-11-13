//
//  OperationView.h
//  FriendCorner
//
//  Created by PengLiang on 2017/11/13.
//  Copyright © 2017年 PengLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OperationView : UIView
@property (nonatomic, assign) BOOL isShowing;
@property (nonatomic, copy) void (^commentBtnClicked)(void);
@property (nonatomic, copy) void (^likeBtnClicked)(void);
@property (nonatomic, copy) NSString *praiseString;
@end
