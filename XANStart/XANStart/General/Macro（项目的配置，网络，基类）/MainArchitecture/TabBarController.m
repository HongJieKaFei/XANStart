//
//  TabBarController.m
//  XANStart
//
//  Created by XAN on 2019/10/15.
//  Copyright © 2019 谢安宁. All rights reserved.
//

#import "TabBarController.h"
#import "MineViewController.h"
#import "OrderViewController.h"
#import "MessageViewController.h"
#import "HomeViewController.h"
#import "NavigationController.h"
@interface TabBarController ()

@end

@implementation TabBarController
/**
 只会调用一次
 */
+(void)load{
    //正常状态下文字颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont   systemFontOfSize:12],NSForegroundColorAttributeName:[UIColor whiteColor]}   forState:UIControlStateNormal];
    //文字选中颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont   systemFontOfSize:12],NSForegroundColorAttributeName:[UIColor whiteColor]}   forState:UIControlStateSelected];
    
    //TabBar背景色
    UIView *tabBarBackGroundColor=[[UIView alloc]init];
    tabBarBackGroundColor.frame=CGRectMake(0, 0, KScreenWidth, TabbarHeight);
    tabBarBackGroundColor.backgroundColor=XANRGBColor(0, 157, 145);
    [[UITabBar appearance] insertSubview:tabBarBackGroundColor atIndex:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //首页
    HomeViewController *home=[[HomeViewController alloc]init];
    [self setUpChildViewController:home title:@"首页" imageName:@"homeIconNormal" selectedImageName:@"homeIconSelected"];
    //消息
    MessageViewController *navigation=[[MessageViewController alloc]init];
    [self setUpChildViewController:navigation title:@"消息" imageName:@"homeIconNormal" selectedImageName:@"homeIconSelected"];
    //订单
    OrderViewController *bulid=[[OrderViewController alloc]init];
    [self setUpChildViewController:bulid title:@"订单" imageName:@"homeIconNormal" selectedImageName:@"homeIconSelected"];
    //设置
    MineViewController *set=[[MineViewController alloc]init];
    [self setUpChildViewController:set title:@"设置" imageName:@"homeIconNormal" selectedImageName:@"homeIconSelected"];
    self.selectedIndex = 0;
}

/**
 初始化一个子控制器
 
 @param childViewController 子控制器
 @param title 标题
 @param imageName 图标
 @param selectedImageName 选中图标
 */
-(void)setUpChildViewController:(UIViewController *)childViewController
                          title:(NSString *)title
                      imageName:(NSString *)imageName
              selectedImageName:(NSString *)selectedImageName{
    childViewController.title=title;
    childViewController.view.backgroundColor=XANViewBackgroundColor;
    //消除TabBar图标的渲染效果 是图片保持原图效果
    UIImage *imageNormal=[UIImage imageNamed:imageName];
    childViewController.tabBarItem.image=[imageNormal imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *imageSelect=[UIImage imageNamed:selectedImageName];
    childViewController.tabBarItem.selectedImage=[imageSelect imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //将一个控制器包装成一个导航控制器
    NavigationController *navigation=[[NavigationController alloc]initWithRootViewController:childViewController];
    [self addChildViewController:navigation];
}


@end
