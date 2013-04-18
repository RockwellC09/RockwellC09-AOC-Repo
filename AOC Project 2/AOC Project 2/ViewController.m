//
//  ViewController.m
//  AOC Project 2
//
//  Created by Christopher Rockwell on 4/18/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set background color
    self.view.backgroundColor = [UIColor colorWithRed:0.18 green:0.18 blue:0.18 alpha:1]; /*#2e2e2e*/
    
    //create title label and set properties
    title = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 20.f, 200.0f, 40.0f)];
    title.text = @"How to Eat Fried Worms";
    title.textAlignment = NSTextAlignmentCenter;
    title.backgroundColor = [UIColor whiteColor];
    title.textColor = [UIColor colorWithRed:0.125 green:0.373 blue:0.549 alpha:1]; /*#205f8c*/
    
    //add title label to view
    [self.view addSubview:title];
    
    //create author label and set properties
    auth = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 70.0f, 80.0f, 40.0f)];
    auth.text = @"Author:";
    auth.textAlignment = NSTextAlignmentRight;
    auth.backgroundColor = [UIColor colorWithRed:0.541 green:0.133 blue:0.133 alpha:1]; /*#8a2222*/
    auth.textColor = [UIColor colorWithRed:0.91 green:0.749 blue:0.635 alpha:1]; /*#e8bfa2*/
    
    //add author label to view
    [self.view addSubview:auth];
    
    //create author text label and set properties
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
