//
//  NotificationService.m
//  mynotesNotificationsExtension
//
//  Created by Fatma Selin Hangişi on 12.05.2020.
//  Copyright © 2020 Webinstats. All rights reserved.
//

#import "NotificationService.h"
@import iOS_wis;

@interface NotificationService ()

@property (nonatomic, strong) void (^contentHandler)(UNNotificationContent *contentToDeliver);
@property (nonatomic, strong) UNMutableNotificationContent *bestAttemptContent;

@end

@implementation NotificationService

- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler {
    self.contentHandler = contentHandler;
    self.bestAttemptContent = [request.content mutableCopy];
    
    if(_bestAttemptContent){
       contentHandler([[[Webinstats alloc] init:@"//wis.webinstats.com/" :@"__COMPANY_ID__" :@"0"] didReceiveNotificationExtension:request :_bestAttemptContent:@"m":@"group.com.webinstats.inbox"]);
    }
}

- (void)serviceExtensionTimeWillExpire {
    // Called just before the extension will be terminated by the system.
    // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
    self.contentHandler(self.bestAttemptContent);
}

@end
