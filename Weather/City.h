//
//  City.h
//  Weather
//
//  Created by Rushan on 2017-05-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject


@property (nonatomic) NSString *currentCountry;
@property (nonatomic) NSString *currentCity;
@property (nonatomic) NSString *weather;
@property (nonatomic) NSDate *time;
@property (nonatomic, assign) int temperature;
@property (nonatomic, assign) int precipitation;
@property (nonatomic, strong) UIImage *icon;

-(instancetype)initWithCityName:(NSString *)currentCity andWithCountryName:(NSString *)currentCountry andWithPrecipitation:(int)precipitation andWithWeather:(NSString *)weather andwithTemperature:(int)temperature andWithTime:(NSDate *)time andWithImage:(UIImage *)icon;


//a description of the weather (sunny, cloudy, fog, etc.) and an icon of that weather description. The user also has the ability to navigate back and forth to a view controller to get more detailed info on that cities weather, ex) current time, current temperature, chance of precipitation, etc.



@end
