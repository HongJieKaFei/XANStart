//
//  NavigationController.m
//  XANStart
//
//  Created by XAN on 2019/10/15.
//  Copyright © 2019 谢安宁. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

/**
 *  第一次使用这个类的时候会调用(1个类只会调用1次)
 */
+ (void)initialize{
    //设置导航栏主题
    [self setupNavBarTheme];
}

/**
 *  设置导航栏主题
 */
+ (void)setupNavBarTheme{
    // 取出appearance对象
    UINavigationBar *navBar = [UINavigationBar appearance];
    //设置左边返回按钮文字的颜色
    [navBar setTintColor:[UIColor whiteColor]];
    // 设置导航栏背景色
    navBar.barTintColor=XANRGBColor(0, 157, 145);
    //隐藏导航栏左边返回按钮的文字
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-200, 0)
                                                         forBarMetrics:UIBarMetricsDefault];
    // 设置导航栏标题属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    //标题字体颜色
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    //标题字体大小
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:19];
    [navBar setTitleTextAttributes:textAttrs];
}

/**
 *  状态栏文字颜色  白色
 */
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

/**
 *  重写这个方法，当控制器跳转时自动隐藏底部导航,这样做防止主界面卡顿时，导致一个ViewController被push多次
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        //1.当控制器跳转时自动隐藏底部导航
        viewController.hidesBottomBarWhenPushed = YES;
        self.interactivePopGestureRecognizer.enabled=NO;//禁止侧滑
        //2.FIXME:这样做防止主界面卡顿时，导致一个ViewController被push多次
        if ([[self.childViewControllers lastObject] isKindOfClass:[viewController class]]) {
            return;
        }
    }
    [super pushViewController:viewController animated:animated];
}


@end
