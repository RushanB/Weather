//
//  CityViewController.m
//  Weather
//
//  Created by Rushan on 2017-05-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController()

/*
@property (nonatomic) NSString *currentCountry;
@property (nonatomic) NSString *currentCity;
@property (nonatomic) NSString *weather;
@property (nonatomic) NSDate *time;
@property (nonatomic, assign) int temperature;
@property (nonatomic, assign) int precipitation;
@property (nonatomic, strong) UIImage *icon; -----
*/

@end


@implementation CityViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UIImageView *iconView = [[UIImageView alloc] initWithImage:self.city.icon];
    [self.view addSubview:iconView];
    
    iconView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *iconHeight = [NSLayoutConstraint constraintWithItem:iconView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1 constant:70];
    iconHeight.active = YES;
    
    NSLayoutConstraint *iconWidth = [NSLayoutConstraint constraintWithItem:iconView
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1 constant:70];
    iconWidth.active = YES;
    
    NSLayoutConstraint *iconCenterX = [NSLayoutConstraint constraintWithItem:iconView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:0];
    iconCenterX.active = YES;
    
    NSLayoutConstraint *iconCenterY = [NSLayoutConstraint constraintWithItem:iconView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1
                                                                   constant:0];
    iconCenterY.active = YES;
    
    UILabel *weather = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:weather];
    weather.text = self.city.weather;
    [weather setfont:[UIFont fontWithName:@"Comic Sans" size:40]];
    weather.textColor = [UIColor whiteColor];
    
    weather.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    NSLayoutConstraint *weatherX = [NSLayoutConstraint constraintWithItem:weatherDescription
                                                                                     attribute:NSLayoutAttributeCenterX
                                                                                     relatedBy:NSLayoutRelationEqual
                                                                                        toItem:self.view
                                                                                     attribute:NSLayoutAttributeCenterX
                                                                                    multiplier:1
                                                                                      constant:0];
    weatherDescriptionXConstraint.active = YES;
    
    NSLayoutConstraint *weatherY = [NSLayoutConstraint constraintWithItem:weatherDescription
                                                                                     attribute:NSLayoutAttributeCenterY
                                                                                     relatedBy:NSLayoutRelationEqual
                                                                                        toItem:self.view
                                                                                     attribute:NSLayoutAttributeCenterY
                                                                                    multiplier:0.5
                                                                                      constant:0];
}

@end
