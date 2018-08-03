//
//  AppDelegate.m
//  share
//
//  Created by 强淑婷 on 2018/7/27.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SearchViewController.h"
#import "ActViewController.h"
#import "ArticleViewController.h"
#import "PersonalViewController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *openView = [[UIViewController alloc] init];
    self.window.rootViewController = openView;
    
    UIImageView *firstImage = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    firstImage.image = [UIImage imageNamed: @"开机.jpg"];
    [openView.view addSubview:firstImage];
    
    [self performSelector:@selector(changeView) withObject:self afterDelay:2];
    
    // Override point for customization after application launch.
    return YES;
}
- (void) changeView
{
    ViewController *login = [[ViewController alloc] init];
    login.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
    [UIView animateWithDuration:0.1 animations:^{
        login.view.transform = CGAffineTransformIdentity;
    }];
    self.window.rootViewController = login;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
