//
//  CCCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Eliot Arntz on 10/25/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCCreateAccountViewController.h"

@interface CCCreateAccountViewController ()

@end

@implementation CCCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* First write an if statement to test if the username TextField's text property is not nil. Also test if the password TextField's text property is not nil and that the password TextField's text property is the same as the confirm password TextField's text property. If the conditionals evalute to true save the username and password TextField's text property to NSUserDefaults. Synchronize NSUserDefaults to save the objects. After call the delegate method didCreateAccount to dismiss the CreateAccountViewController. If the conditionals do not evaluate to true let the user know that issue with a UIAlertView. */
- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ((self.usernameTextField.text != nil) && (self.passwordTextField.text !=nil) && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text])
    {
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
    
        [self.delegate didCreateAccount];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
}

/* Call the delegate method didCancel which is implemented in the CCCreateAccountViewController */
- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

@end
