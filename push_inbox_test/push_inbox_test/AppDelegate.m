//
//  AppDelegate.m
//  push_inbox_test
//
//  Created by Fatma Selin Hangişi on 12.05.2020.
//  Copyright © 2020 Webinstats. All rights reserved.
//

#import "AppDelegate.h"
@import iOS_wis;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    Webinstats* wiso = [[Webinstats alloc] init:@"//wis.webinstats.com/" :@"__COMPANY_ID__" :@"0"];
    [wiso register:application didFinishLaunchingWithOptions:launchOptions];
    [wiso setAppGroupNameWithGroup_name:@"group.com.webinstats.inbox"];
    [wiso enableAppInbox];
    return YES;
}
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    [Webinstats registerWithDeviceTokenWithDeviceToken:deviceToken];
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
