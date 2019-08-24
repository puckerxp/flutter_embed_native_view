#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "MyPlatformViewFactory.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [GeneratedPluginRegistrant registerWithRegistry:self];
    MyPlatformViewFactory *myPlatformViewFactory = [[MyPlatformViewFactory alloc] init];
    [[self registrarForPlugin:@"Lipuzhi"] registerViewFactory:myPlatformViewFactory withId:@"MyUiKitView"];
    // Override point for customization after application launch.
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
