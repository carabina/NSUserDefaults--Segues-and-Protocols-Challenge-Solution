//
//  CCSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Eliot Arntz on 10/25/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCSignInViewController.h"

@interface CCSignInViewController ()

@end

@implementation CCSignInViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[CCCreateAccountViewController class]]){
        CCCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

/* Use the method performSegueWithIdentifier to trigger the Segue to the CreateAccountViewController. The identifier name is set in the storyboard.*/
- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

/* First access the saved username and password from NSUserDefaults. Next do an if statement to check if the username textField's text property and the password textField's text property match what was saved to NSUserDefaults. If the statement evalutes to true segue to the ViewController. Otherwise use an alertview to tell the user that something has gone wrong. */
- (IBAction)loginButtonPressed:(UIButton *)sender
{
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]){
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username or password combination does not work" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
    
}

#pragma mark - CCCreateAccountViewController Delegate

/* Implement our delegate methods didCancel and didCreateAccount. When these methods are called from the CreateAccountViewController class we dismiss the CreateAccountViewController and display the SignInViewController. */
-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
