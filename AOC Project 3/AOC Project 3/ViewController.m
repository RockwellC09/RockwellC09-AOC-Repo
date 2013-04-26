//
//  ViewController.m
//  AOC Project 3
//
//  Created by Christopher Rockwell on 4/25/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //call the append method, send it two strings
    NSString *appendedStr = [self append:@"I love to " stringTwo:@"append strings."];
    //call DisplayAlertWithString and send it the appendedStr variable to alert
    [self DisplayAlertWithString:appendedStr];
    
    //call add function, pass it two values, and set it equal to sum
    int sum = [self add:5 numTwo:10];
    //bundle sum variable into NSNumber
    NSNumber *number = [[NSNumber alloc] initWithInt:sum];
    //convert number variable to a string
    NSString *stringNum = [number stringValue];
    
    //call DisplayAlertWithString and send it the alert info/string
    [self DisplayAlertWithString: [NSString stringWithFormat:@"The number is %@", stringNum]];
    
    //set two int variable to send to the compare function
    int firstNum = 23;
    int secondNum = 23;
    //call the compare function and send it two integer values
    if ([self compare:firstNum numTwo:secondNum] == YES) {
        [self DisplayAlertWithString:[NSString stringWithFormat:@"%d and %d are equal.", firstNum, secondNum]];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//function that takes two integers and returns the sum of their values
-(int)add:(int)numOne numTwo: (int)numTwo {
    return numOne + numTwo;
}

//function that checks two integers to see if they're equal or not and returns YES or NO
-(BOOL)compare: (int)numOne numTwo :(int)numTwo {
    if (numOne == numTwo) {
        return YES;
    } else {
        return NO;
    }
}

//function that appends two NSStrings and returns them
-(NSString*)append:(NSString*)stringOne stringTwo:(NSString*) stringTwo {
    NSMutableString *strings = [[NSMutableString alloc] init];
    
    [strings appendString:stringOne];
    [strings appendString:stringTwo];
    return strings;
}

//this function displays the data sent to it in an UIAlertView
-(void)DisplayAlertWithString: (NSString*)string {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:string message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    if (alert != nil) {
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
