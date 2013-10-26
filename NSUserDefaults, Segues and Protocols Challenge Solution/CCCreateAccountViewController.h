//
//  CCCreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Eliot Arntz on 10/25/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

/* We will use these names as the keys for NSUserDefaults. */
#define USER_NAME @"username"
#define USER_PASSWORD @"password"

/*Define a protocol with 2 methods to be implemented in the CCSignInViewController file.  Notice the name of our delegate is the name of the class with the word Delegate at the end. */
@protocol CCCreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface CCCreateAccountViewController : UIViewController

/* Create a property named delegate. Notice that we use weak instead of strong, type id (a pointer to any type of object) and our variable named delegate conforms to our protocol. */
@property (weak, nonatomic) id <CCCreateAccountViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;


@end
