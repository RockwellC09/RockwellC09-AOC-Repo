//
//  AppDelegate.m
//  AOC Project 1
//
//  Created by Christopher Rockwell on 4/10/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //The story of my app will be about weather and choosing what to wear. This is relevant to my weather here in Texas.
    //It's hot one day, and cold and rainy the next =z
    
    //set float temperature variable
    float floatTemp = 88.60f;
    
    //set int temperature variable
    int intTemp = (float)floatTemp;
    
    //console log float and int temperature variables
    NSLog(@"float: %.2f int: %d", floatTemp, intTemp);
    
    // set todays temperature
    int tempToday = 60;
    
    //see if it's raining outside
    bool isRaining = YES;
    
    //set chance of rain variable percent
    float rainChance = 55.60f;
    
    if (tempToday < 50 && isRaining == NO) {
        NSLog(@"Looks like I'll need a jacket today.");
    } else if (rainChance > 50 || isRaining == YES){
        NSLog(@"Better put on a rain jacket today.");
    } else {
        NSLog(@"I can bring out my shorts today!");
    }
    
    //In this loop the meteorologist is going out to predict the weather for the next three days
    NSString *day;
    for (int i = 0; i < 3; i++) {
        //random number for the temperature
        int degrees = 30 + arc4random() % 70 ;
        if (i == 0){
            day = @"Monday";
        } else if (i == 1) {
            day = @"Tuesday";
        } else {
            day = @"Wednesday";
        }
        
        NSLog(@"It will be %d degrees on %@.", degrees, day);

    }
    
    //Now the meteorologist will predict the 5 day weather forcast for next week
    NSString *nDay;
    for (int x = 0; x < 5; x++) {
        //random number for the temperature
        int nDegrees = 30 + arc4random() % 70 ;
        //random number to check for raining
        int rain = arc4random() % 101;
        if (x == 0) {
            nDay = @"Sunday";
        } else if (x == 1){
            nDay = @"Monday";
        } else if (x == 2) {
            nDay = @"Tuesday";
        } else if (x == 3) {
            nDay = @"Wednesday";
        } else if (x == 4) {
            nDay = @"Thursday";
        }
        
        NSLog(@"The temperature will be %d on %@ with a %d chance of rain.", nDegrees, nDay, rain);
        
        for (int a = 0; a < 1; a++) {
            if (rain < 40) {
                NSLog(@"Better bring a rain jacket just in case.");
            } else {
                NSLog(@"You'll need and rain jacket and rain boots!");
            }
        }
    }
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
