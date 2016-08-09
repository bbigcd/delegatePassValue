//
//  DelegateViewController.h
//  delegatePassValue
//
//  Created by bbigcd on 16/8/9.
//  Copyright © 2016年 cd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DelegateViewController;

@protocol PushDelegate <NSObject>

- (void)didPushDelegateViewController:(DelegateViewController *)vc;

@end

@interface DelegateViewController : UIViewController

@property (nonatomic, weak) id<PushDelegate> pushDelegate;

@end
