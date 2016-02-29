#import "PushStatus.h"

@implementation PushStatus

- (void)isPushNotificationsAvailable:(CDVInvokedUrlCommand*)command
{
	UIApplication *application = [UIApplication sharedApplication];
	CDVPluginResult* pluginResult = nil;
	BOOL isEnabled;

	if ([application respondsToSelector:@selector(currentUserNotificationSettings)]){
		UIUserNotificationSettings *notificationSettings = [[UIApplication sharedApplication] currentUserNotificationSettings];

		if (!notificationSettings || (notificationSettings.types == UIUserNotificationTypeNone)) {
		isEnabled = NO;
		} else {
		isEnabled = YES;
		}
		NSString* msg = [NSString stringWithFormat: isEnabled ? @"true" : @"false"];
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
	}
	else if ([application respondsToSelector:@selector(isRegisteredForRemoteNotifications)])
	{
		isEnabled = [application isRegisteredForRemoteNotifications];
		NSString* msg = [NSString stringWithFormat: isEnabled ? @"true" : @"false"];
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
	}
	else if([application respondsToSelector:@selector(enabledRemoteNotificationTypes)])
	{
		UIRemoteNotificationType types = [application enabledRemoteNotificationTypes];
		isEnabled = types & UIRemoteNotificationTypeAlert;
		NSString* msg = [NSString stringWithFormat: isEnabled ? @"true" : @"false"];
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Such platform is not supported"];
	}
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end