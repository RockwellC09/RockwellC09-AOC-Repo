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
    NSString *appendedStr = [self append:@"I love to" stringTwo:@"append strings."];
    
    
    //call add function, pass it two values, and set it equal to sum
    int sum = [self add:5 numTwo:10];
    //bundle sum into NSNumer
    NSNumber *number = [[NSNumber alloc] initWithInt:sum];
    //convert number vatiable to a string
    NSString *stringNum = [number stringValue];
    
    //call DisplayAlertWithString and send it the alert info/string
    [self DisplayAlertWithString: [NSString stringWithFormat:@"The number is %@", stringNum]];
    
    //call compare function in and send two values
    [self compare:23 numTwo:23];
    
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
        [self DisplayAlertWithString:[NSString stringWithFormat:@"%d and %d are equal.", numOne, numTwo]];
        return YES;
    } else {
        return NO;
    }
}

//function that appends two NSString and returns them
-(NSString*)append:(NSString*)stringOne stringTwo:(NSString*) stringTwo {
    NSMutableString *strings = [[NSMutableString alloc] init];
    
    [strings appendString:stringOne];
    [strings appendString:stringTwo];
    return strings;
}

//displays the data sent to it in an UIAlertView
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
