//
//  DetailedViewController.m
//  Weather
//
//  Created by Rushan on 2017-05-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"


@interface DetailedViewController()


@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad]; //Additional setup afetr loading view
    
    UILabel *cityTime = [[UILabel alloc] initWithFrame:CGRectMake(50, 250, 200 ,100)];
    cityTime.textColor = [UIColor whiteColor];
    cityTime.text = [NSString stringWithFormat:(@"Time: %@"), self.cityDetails.time];
    
    UILabel *cityTemperature = [[UILabel alloc] initWithFrame:CGRectMake(50, 300, 200, 100)];
    cityTemperature.textColor = [UIColor whiteColor];
    cityTemperature.text = [NSString stringWithFormat:(@"Country: %@"), self.cityDetails.currentCountry];
    [self.view addSubview:cityTemperature];
    
    UILabel *cityPrecipitation = [[UILabel alloc] initWithFrame:CGRectMake(50, 350, 400, 100)];
    
    cityPrecipitation.textColor = [UIColor whiteColor];
    cityPrecipitation.text = [NSString stringWithFormat:(@"Precipitation: %i"), self.cityDetails.precipitation];
    [self.view addSubview:cityPrecipitation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; //Dispose of any resources that can be recreated
}

 
@end
