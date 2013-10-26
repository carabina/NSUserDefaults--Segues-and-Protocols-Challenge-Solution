//
//  CCViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Eliot Arntz on 10/25/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"
#import "CCCreateAccountViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

/* Update the label's text property with the information saved to NSUserDefaults. */
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
