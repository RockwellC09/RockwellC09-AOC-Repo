//
//  ViewController.m
//  AOC Project 4
//
//  Created by Christopher Rockwell on 5/1/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set background color of parent view
    self.view.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1]; /*#ebebeb*/

    //create username label and set properties
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 30.0f)];
    username.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1]; /*#ebebeb*/
    username.textColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    username.text = @"Username:";
    username.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:username];
    
    //create username text field and set properties
    UITextField *userTextField = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 10.0f, 180.0f, 30.0f)];
    userTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:userTextField];
    
    //create login button and set properties
    UIButton *login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    login.frame = CGRectMake(220.0f, 50.0f, 80.0f, 30.0f);
    [login setTitle:@"Login" forState:UIControlStateNormal];
    [login setTitleColor:[UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1] /*#326487*/
                forState:UIControlStateNormal];
    [self.view addSubview:login];
    
    //create user prompt label and set properties
    UILabel *prompt = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, self.view.frame.size.width, 60.0f)];
    prompt.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    prompt.textColor = [UIColor whiteColor];
    prompt.text = @"Please Enter Username";
    prompt.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:prompt];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
