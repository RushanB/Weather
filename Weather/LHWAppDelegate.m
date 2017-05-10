//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//
#import "DetailedViewController.h"
#import "CityViewController.h"
#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *buttons = [[UITabBarController alloc] init];
    self.window.rootViewController = buttons;
    
    //TORONTO
    City *toronto = [[City alloc] initWithCityName:@"Toronto" andWithCountryName:@"Canada"andWithPrecipitation:40 andWithWeather:@"Cloudy" andwithTemperature:19 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"cloudy.png"]];
    
    CityViewController *torontoVC = [[CityViewController alloc] init];
    UINavigationController *torontoNC = [[UINavigationController alloc] initWithRootViewController:torontoVC];
    torontoVC.title = toronto.currentCity;
    torontoVC.city = toronto;
    
    //DUBAI
    City *dubai = [[City alloc] initWithCityName:@"Dubai" andWithCountryName:@"UAE"andWithPrecipitation:40 andWithWeather:@"Sunny" andwithTemperature:40 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"Sunny.png"]];
    
    CityViewController *dubaiVC = [[CityViewController alloc] init];
    UINavigationController *dubaiNC = [[UINavigationController alloc] initWithRootViewController:dubaiVC];
    dubaiVC.title = dubai.currentCity;
    dubaiVC.city = dubai;
    
    //NEWYORK
    City *newyork = [[City alloc] initWithCityName:@"New York" andWithCountryName:@"USA"andWithPrecipitation:70 andWithWeather:@"Rain" andwithTemperature:2 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"rain.png"]];
    
    CityViewController *newyorkVC = [[CityViewController alloc] init];
    UINavigationController *newyorkNC = [[UINavigationController alloc] initWithRootViewController:newyorkVC];
    newyorkVC.title = newyork.currentCity;
    newyorkVC.city = newyork;
    
    //PARIS
    City *paris = [[City alloc] initWithCityName:@"Paris" andWithCountryName:@"France"andWithPrecipitation:40 andWithWeather:@"Fog" andwithTemperature:19 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"fog.png"]];
    
    CityViewController *parisVC = [[CityViewController alloc] init];
    UINavigationController *parisNC = [[UINavigationController alloc] initWithRootViewController:parisVC];
    parisVC.title = paris.currentCity;
    parisVC.city = paris;
    
    //TOKYO
    City *tokyo = [[City alloc] initWithCityName:@"Tokyo" andWithCountryName:@"Japan"andWithPrecipitation:10 andWithWeather:@"Cloudy" andwithTemperature:5 andWithTime:[NSDate new] andWithImage:[UIImage imageNamed:@"clear-night.png"]];
    
    CityViewController *tokyoVC = [[CityViewController alloc] init];
    UINavigationController *tokyoNC = [[UINavigationController alloc] initWithRootViewController:tokyoVC];
    tokyoVC.title = tokyo.currentCity;
    tokyoVC.city = tokyo;
    
    
    
    
    buttons.viewControllers = @[torontoNC, dubaiNC, newyorkNC, parisNC, tokyoNC];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
