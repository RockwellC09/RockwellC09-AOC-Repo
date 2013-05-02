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
    [self.view addSubview:username];
    
    //create username text field and set properties
    userTextField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 200.0f, 30.0f)];
    userTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:userTextField];
    
    //create login button and set properties
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    login.frame = CGRectMake(220.0f, 50.0f, 80.0f, 30.0f);
    [login setTitle:@"Login" forState:UIControlStateNormal];
    [login setTitleColor:[UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1] /*#326487*/
                forState:UIControlStateNormal];
    login.tag = 1;
    [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login];
    
    //create user prompt label and set properties
    prompt = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, self.view.frame.size.width, 70.0f)];
    prompt.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    prompt.text = @"Please Enter Username";
    prompt.textColor = [UIColor whiteColor];
    prompt.textAlignment = NSTextAlignmentCenter;
    prompt.numberOfLines = 2;
    [self.view addSubview:prompt];
    
    //create show date button and set properties
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    dateButton.frame = CGRectMake(10.0f, 250.0f, 100.0f, 40.0f);
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    [dateButton setTitleColor:[UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1] /*#326487*/ forState:UIControlStateNormal];
    dateButton.tag = 2;
    [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dateButton];
    
    //create info button and set properties
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    infoButton.frame = CGRectMake(10.0f, 320.0f, 20.0f, 20.0f);
    infoButton.tag = 3;
    [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:infoButton];
    
    //create info label and set properties
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(
                                                          0.0f, 360.0f, self.view.frame.size.width, 70.0f)];
    infoLabel.backgroundColor = [UIColor whiteColor];
    infoLabel.textColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    infoLabel.textAlignment = NSTextAlignmentCenter;
    infoLabel.numberOfLines = 2;
    [self.view addSubview:infoLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//function that runs when the login button is clicked
-(void)onClick: (UIButton*)thisButton  {
    //check to see if login button was clicked
    if (thisButton.tag == 1) {
        //get the username text field info and set it to usernameText
        NSString *usernameText = [userTextField text];
        
        //check if username has text or not and prompt user
        if (userTextField.text.length == 0) {
            prompt.text = @"Username cannot be empty";
        } else if (userTextField.text.length > 0) {
            prompt.text = [NSString stringWithFormat:@"User: %@ has been logged in", usernameText];
        }
        //hide keyboard
        [self.view endEditing:YES];
    }
    
    //check to see if show date button was clicked
    if (thisButton.tag == 2) {
        //create variable that contains today's date and format it
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"MMMM dd, y hh:mm:ss a zzzz"];
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:([dateFormat stringFromDate:date]) delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [dateAlert show];
    }
    
    //check to see if the info button was clicked
    if (thisButton.tag == 3) {
        infoLabel.text = @"This application was created by: Christopher Rockwell";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
