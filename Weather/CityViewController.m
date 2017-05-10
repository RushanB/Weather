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
    [weather setFont:[UIFont fontWithName:@"Comic Sans" size:40]];
    weather.textColor = [UIColor whiteColor];
    
    weather.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    NSLayoutConstraint *weatherX = [NSLayoutConstraint constraintWithItem:weather
                                                                attribute:NSLayoutAttributeCenterX
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1
                                                                 constant:0];
    weatherX.active = YES;
    
    NSLayoutConstraint *weatherY = [NSLayoutConstraint constraintWithItem:weather
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:0.5
                                                                 constant:0];
    weatherY.active = YES;
    
    UILabel *temperature = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:temperature];
    //temperature.text = self.city.temperature;
    [temperature setFont:[UIFont fontWithName:@"Comic Sans" size:20]];
    temperature.textColor = [UIColor whiteColor];
    
    NSString *tempString = [NSString stringWithFormat:@"%i degrees celsius", self.city.temperature];
    temperature.text = tempString;
    
    temperature.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *temperatureX = [NSLayoutConstraint constraintWithItem:temperature
                                                                    attribute:NSLayoutAttributeCenterX
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeCenterX
                                                                   multiplier:1
                                                                     constant:-50];
    temperatureX.active = YES;
    
    NSLayoutConstraint *temperatureY = [NSLayoutConstraint constraintWithItem:temperature
                                                                    attribute:NSLayoutAttributeCenterY
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeCenterY
                                                                   multiplier:0.70
                                                                     constant:0];
    temperatureY.active = YES;
    
    UIButton *buttons = [[UIButton alloc] initWithFrame:CGRectZero];
    [buttons setTitle:@"More Details" forState:UIControlStateNormal];
    [buttons setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [buttons setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:buttons];
    
    buttons.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *buttonsX = [NSLayoutConstraint constraintWithItem:buttons
                                                                attribute:NSLayoutAttributeCenterX
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1
                                                                 constant:50];
    buttonsX.active = YES;
    
    NSLayoutConstraint *buttonsY = [NSLayoutConstraint constraintWithItem:buttons
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.5
                                                                 constant:0];
    buttonsY.active = YES;
    [buttons addTarget:self action:@selector(showDetails:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

-(void)showDetails:(UIButton *)sender{
        DetailedViewController *detailedView = [[DetailedViewController alloc] init];
        detailedView.cityDetails = self.city;
        [self.navigationController pushViewController:detailedView animated:YES];
}


@end
