//
//  SceneDelegate.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/14.
//

#import "SceneDelegate.h"
#import "QBWXDHaveClassViewController.h"
#import "QBWXDChooseClassViewController.h"
#import "QBWXDMySettingViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    self.window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    QBWXDChooseClassViewController *chooseViewController = [[QBWXDChooseClassViewController alloc] init];
    chooseViewController.title = @"选课";
    
    QBWXDHaveClassViewController *haveClassViewController = [[QBWXDHaveClassViewController alloc] init];
    haveClassViewController.title = @"上课";
    
    QBWXDMySettingViewController *mySettingViewControoler = [[QBWXDMySettingViewController alloc] init];
    mySettingViewControoler.title = @"我";
    
    
    UINavigationController *chooseClassNavController = [[UINavigationController alloc] initWithRootViewController:chooseViewController];
    chooseViewController.title = @"选课";
    chooseViewController.tabBarItem.image = [UIImage imageNamed:@"dl_entrance_tab_class_normal.png"];
    chooseViewController.tabBarItem.selectedImage = [[UIImage imageNamed:@"dl_entrance_tab_class_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    UINavigationController *haveClassNavController = [[UINavigationController alloc] initWithRootViewController:haveClassViewController];
    haveClassNavController.title = @"上课";
    haveClassNavController.tabBarItem.image = [UIImage imageNamed:@"dl_entrance_tab_myclass_normal.png"];
    haveClassNavController.tabBarItem.selectedImage = [[UIImage imageNamed:@"dl_entrance_tab_myclass_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    UINavigationController *mySettingNavController = [[UINavigationController alloc] initWithRootViewController:mySettingViewControoler];
    mySettingNavController.title = @"我";
    mySettingNavController.tabBarItem.image = [UIImage imageNamed:@"dl_entrance_tab_me_normal.png"];
    mySettingNavController.tabBarItem.selectedImage = [[UIImage imageNamed:@"dl_entrance_tab_me_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    UITabBarController *mainTabarController = [[UITabBarController alloc] init];
    mainTabarController.viewControllers = @[chooseClassNavController, haveClassNavController, mySettingNavController];
    self.window.rootViewController = mainTabarController;
    
    
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
