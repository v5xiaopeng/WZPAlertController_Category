//
//  CTMediator+WZPAlertController.m
//  WZPAlertController_Category
//
//  Created by mac on 2019/10/18.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "CTMediator+WZPAlertController.h"

@implementation CTMediator (WZPAlertController)


- (UIViewController *)WZPAlertController_initWebAlertController{
    return [self performTarget:@"WZPAlertController"
                        action:@"initWebAlertController"
                        params:nil
             shouldCacheTarget:NO];
}

- (UIViewController *)WZPAlertController_initTextAlertController{
    return [self performTarget:@"WZPAlertController"
                        action:@"initTextAlertController"
                        params:nil
             shouldCacheTarget:NO];
}

- (UIViewController *)WZPAlertController_initImageAlertController{
    return [self performTarget:@"WZPAlertController"
                        action:@"initImageAlertController"
                        params:nil
             shouldCacheTarget:NO];
}
- (void)WZPAlertController_setAlertColors:(NSDictionary *)params{
    [self performTarget:@"WZPAlertController"
                 action:@"setAlertColors"
                 params:params
      shouldCacheTarget:NO];
}

- (void)WZPAlertController_setTapBgDontCancel{
    [self performTarget:@"WZPAlertController"
                 action:@"setTapBgDontCancel"
                 params:nil
      shouldCacheTarget:NO];
}

- (void)WZPAlertController_setHaveNotCancelBtn{
    [self performTarget:@"WZPAlertController"
                 action:@"setHaveNotCancelBtn"
                 params:nil
      shouldCacheTarget:NO];
}

- (void)WZPAlertController_setContentString:(NSString *)content andTitle:(NSString *)title cancelTitle:(NSString *)cancel confirmTitle:(NSString *)confirm{
    NSDictionary *params = @{@"contentStr":content != nil ? content : @"",
                             @"titleStr":title != nil ? title : @"",
                             @"cancelTitleStr":cancel != nil ? cancel : @"",
                             @"confirmTitleStr":confirm != nil ? confirm : @""
                             };
    [self performTarget:@"WZPAlertController"
                 action:@"setContentStringAndSomeTitle"
                 params:params
      shouldCacheTarget:NO];
}

- (void)WZPAlertController_setCancelBlock:(void(^)(void))block{
    [self performTarget:@"WZPAlertController"
                 action:@"setAlertCancelBlock"
                 params:@{@"cancelBlock":block}
      shouldCacheTarget:NO];
}

- (void)WZPAlertController_setConfirmBlock:(void(^)(void))block{
    [self performTarget:@"WZPAlertController"
                 action:@"setAlertConfirmBlock"
                 params:@{@"confirmBlock":block}
      shouldCacheTarget:NO];
}

@end
