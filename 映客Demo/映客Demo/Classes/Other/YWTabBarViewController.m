//
//  YWTabBarViewController.m
//  映客Demo
//
//  Created by wyw on 16/11/23.
//  Copyright © 2016年 wyw. All rights reserved.
//  根控制器

#import "YWTabBarViewController.h"
#import "YWLiveListTableViewController.h"
#import "YWLiveOpenViewController.h"
#import "YWMeViewController.h"



@interface YWTabBarViewController ()

@end

@implementation YWTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.添加子控制器
    [self setupChildViews];
    // 2.设置底部tabbar
    [self setupTabBar];
    // 3.设置顶部导航条
    [self setupNavigationBar];
    // 4.设置开启直播按钮
    [self setupLiveButton];
}
- (void)viewWillLayoutSubviews
{
   
}

/**
   添加子控制器
 */
- (void)setupChildViews
{
    // 1.添加直播列表页面
    [self addChildViewController:[[YWLiveListTableViewController alloc] init] withImage:@"tab_live" andSelectedImage:@"tab_live_p"];
    // 2.添加开启直播页面
    [self addChildViewController:[[YWLiveOpenViewController alloc] init] withImage:@"tab_launch" andSelectedImage:@"tab_launch"];
    // 3.添加我的页面
    [self addChildViewController:[[YWMeViewController alloc] init] withImage:@"tab_me" andSelectedImage:@"tab_me_p"];
}

- (void)addChildViewController:(UIViewController *)VC withImage:(NSString *)imageName andSelectedImage:(NSString *)selectImageName
{
    // 1.设置图片
    VC.tabBarItem.image = [UIImage imageNamed:imageName];
    VC.tabBarItem.selectedImage = [UIImage imageNamed:selectImageName];
    // 2.添加控制器
    [self addChildViewController:VC];
}

/**
 设置底部tabbar
 */
- (void)setupTabBar
{
//    self.tabBar.backgroundImage = [UIImage imageNamed:@"tab_bg"];
//    [[UITabBar appearance] setShadowImage:[UIImage new]];
//    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];
}
/**
 设置顶部导航条
 */
- (void)setupNavigationBar
{
    
}
/**
 设置开启直播按钮
 */
- (void)setupLiveButton
{
    
}

@end
