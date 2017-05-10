//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//
#import "DetailedViewController.h"
#import "City.h"
#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBar;
    
    City *vancouver = [[City alloc] initWithCityName:@"Vancouver" andWithCountryName:@"Canada"andWithPrecipitation:40 andWithWeather:@"Sunny" andwithTemperature:19 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"Sunny.png"]];
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
