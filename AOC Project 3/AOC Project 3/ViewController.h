//
//  ViewController.h
//  AOC Project 3
//
//  Created by Christopher Rockwell on 4/25/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

-(int)add:(int)numOne numTwo:(int)numTwo;
-(BOOL)compare: (int)numOne numTwo :(int)numTwo;
-(void)DisplayAlertWithString: (NSString*)string;
-(NSString*)append:(NSString*)stringOne stringTwo:(NSString*) stringTwo;

@end
