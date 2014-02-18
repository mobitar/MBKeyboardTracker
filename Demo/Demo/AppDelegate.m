//
//  AppDelegate.m
//  Demo
//
//  Created by Mo Bitar on 2/18/14.
//  Copyright (c) 2014 progenius. All rights reserved.
//

#import "AppDelegate.h"
#import "MBKeyboardTracker.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [MBKeyboardTracker beginTracking];
    return YES;
}

@end
