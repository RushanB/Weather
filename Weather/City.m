//
//  City.m
//  Weather
//
//  Created by Rushan on 2017-05-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"
#import "DetailedViewController.h"

@implementation City

-(instancetype)initWithCityName:(NSString *)currentCity andWithCountryName:(NSString *)currentCountry andWithPrecipitation:(int)precipitation andWithWeather:(NSString *)weather andwithTemperature:(int)temperature andWithTime:(NSDate *)time andWithImage:(UIImage *)icon{
    if (self = [super init]){
        _currentCity = currentCity;
        _currentCountry = currentCountry;
        _precipitation = precipitation;
        _weather = weather;
        _temperature = temperature;
        _time = time;
        _icon = icon;
    }
    return self;
}

@end
