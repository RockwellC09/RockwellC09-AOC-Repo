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
    
    //create author name label and set properties
    aName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 70.0f, 150.0f, 40.0f)];
    aName.text = @"Thomas Rockwell";
    aName.textAlignment = NSTextAlignmentLeft;
    aName.backgroundColor = [UIColor colorWithRed:0.878 green:0.475 blue:0.475 alpha:1]; /*#e07979*/
    aName.textColor = [UIColor colorWithRed:0.278 green:0.278 blue:0.278 alpha:1]; /*#474747*/
    
    //add author name label to view
    [self.view addSubview:aName];
    
    //create publishing label and set properties
    pub = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 120.0f, 100.0f, 40.f)];
    pub.text = @"Publishing:";
    pub.textAlignment = NSTextAlignmentRight;
    pub.backgroundColor = [UIColor colorWithRed:0.859 green:0.859 blue:0.859 alpha:1]; /*#dbdbdb*/
    pub.textColor = [UIColor colorWithRed:0.271 green:0.271 blue:0.271 alpha:1]; /*#454545*/
    
    //add publishing label to view
    [self.view addSubview:pub];
    
    //create publishing name label and set properties
    pName = [[UILabel alloc] initWithFrame:CGRectMake(130.0f, 120.0f, 150.0f, 40.0f)];
    pName.text = @"Random House Childrens Books";
    pName.numberOfLines = 2;
    pName.textAlignment = NSTextAlignmentLeft;
    pName.backgroundColor = [UIColor colorWithRed:0.078 green:0.278 blue:0.439 alpha:1]; /*#144770*/
    pName.textColor = [UIColor colorWithRed:0.506 green:0.663 blue:0.788 alpha:1]; /*#81a9c9*/
    
    //add publishing name label to view
    [self.view addSubview:pName];
    
    //create summary label and set properties
    summ = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 170.0, 100.0f, 40.0f)];
    summ.text = @"Summary";
    summ.textAlignment = NSTextAlignmentLeft;
    summ.backgroundColor = [UIColor colorWithRed:0.18 green:0.047 blue:0.412 alpha:1]; /*#2e0c69*/
    summ.textColor = [UIColor colorWithRed:0.706 green:0.639 blue:0.82 alpha:1]; /*#b4a3d1*/
    
    //add summary label to view
    [self.view addSubview:summ];
    
    //create summary text label and set properties
    summText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 220.0f, 280.0f, 80.0f)];
    summText.text = @"Because of a bet, Billy is in the uncomfortable position of having to eat fifteen worms in fifteen days.";
    summText.textAlignment = NSTextAlignmentCenter;
    summText.numberOfLines = 3;
    summText.backgroundColor = [UIColor colorWithRed:0.388 green:0.294 blue:0.196 alpha:1]; /*#634b32*/
    summText.textColor = [UIColor colorWithRed:0.251 green:0.537 blue:0.631 alpha:1]; /*#4089a1*/
    
    //add summary text to view
    [self.view addSubview:summText];
    
    //create array of items
    NSArray *items = [NSArray arrayWithObjects:@"worms", @"peanut butter", @"horseradish", @"condiments", @"food", nil];
    
    //create NSmutableString and allocate it
    NSMutableString *mutString = [[NSMutableString alloc] init];
    
    //loop through the items array and append it to a mutable string
    for (int i = 0; i < 5; i++) {
        if (i == 4) {
            [mutString appendString:@"and "];
            [mutString appendString:[items objectAtIndex: i]];
        } else {
            [mutString appendString:[items objectAtIndex: i]];
            [mutString appendString:@", "];
        }
    }
    
    //create items label and set properties
    itemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 310.0f, 120.0, 40.0f)];
    itemsLabel.text = @"List of items";
    itemsLabel.textAlignment = NSTextAlignmentLeft;
    itemsLabel.backgroundColor = [UIColor colorWithRed:0.859 green:0.792 blue:0.678 alpha:1]; /*#dbcaad*/
    itemsLabel.textColor = [UIColor colorWithRed:0.729 green:0.286 blue:0.286 alpha:1]; /*#ba4949*/
    
    //add items label to view
    [self.view addSubview:itemsLabel];
    
    //create items text label and set properties
    itemsText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 360.0f, 200.0f, 80.0f)];
    itemsText.text = mutString;
    itemsText.numberOfLines = 3;
    itemsText.textAlignment = NSTextAlignmentCenter;
    itemsText.backgroundColor = [UIColor colorWithRed:0.51 green:0.659 blue:0.82 alpha:1]; /*#82a8d1*/
    itemsText.textColor = [UIColor colorWithRed:0.075 green:0.216 blue:0.369 alpha:1]; /*#13375e*/
    
    //add items text label to view
    [self.view addSubview:itemsText];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
