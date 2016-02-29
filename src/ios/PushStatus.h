#import <Cordova/CDV.h>

@interface PushStatus : CDVPlugin

- (void) isPushNotificationsAvailable:(CDVInvokedUrlCommand*)command;

@end