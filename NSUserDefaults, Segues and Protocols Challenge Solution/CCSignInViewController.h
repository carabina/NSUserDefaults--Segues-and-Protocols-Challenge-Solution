//
//  CCSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Eliot Arntz on 10/25/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCreateAccountViewController.h"

/* Conform to the CCCreateAccountViewControllerDelegate. This gives us access to the methods defined in the CCCreateAccountViewController protocol. */

@interface CCSignInViewController : UIViewController <CCCreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;


@end
