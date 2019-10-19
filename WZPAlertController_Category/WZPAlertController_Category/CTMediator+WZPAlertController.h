//
//  CTMediator+WZPAlertController.h
//  WZPAlertController_Category
//
//  Created by mac on 2019/10/18.
//  Copyright © 2019年 mac. All rights reserved.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (WZPAlertController)


/** 创建webView类型alert */
- (UIViewController *)WZPAlertController_initWebAlertController;
/** 创建text类型alert */
- (UIViewController *)WZPAlertController_initTextAlertController;
/** 创建image类型alert */
- (UIViewController *)WZPAlertController_initImageAlertController;

/**
 设置一些颜色

 @param params @{@@"titleFontColor":<#标题字体颜色#>,
 @@"titleBgColor":<#标题背景颜色#>,
 @@"contentFontColor":<#内容字体颜色#>,
 @@"cancelBtnFontColor":<#取消按钮字体颜色#>,
 @@"cancelBtnBgColor":<#取消按钮背景颜色#>,
 @@"confirmBtnFontColor":<#确认按钮字体颜色#>,
 @@"confirmBtnBgColor":<#确认按钮背景颜色#>,}
 */
- (void)WZPAlertController_setAlertColors:(NSDictionary *)params;
/** 设置背景点击alert不消失 */
- (void)WZPAlertController_setTapBgDontCancel;
/** 只要确认按钮 */
- (void)WZPAlertController_setHaveNotCancelBtn;
/** 内容 标题 取消/确认 */
- (void)WZPAlertController_setContentString:(NSString *)content andTitle:(NSString *)title cancelTitle:(NSString *)cancel confirmTitle:(NSString *)confirm;
/** 取消按钮事件 */
- (void)WZPAlertController_setCancelBlock:(void(^)(void))block;
/** 确认按钮事件 */
- (void)WZPAlertController_setConfirmBlock:(void(^)(void))block;

@end
