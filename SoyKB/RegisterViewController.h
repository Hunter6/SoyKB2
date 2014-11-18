//
//  RegisterViewController.h
//  SoyKB
//
//  Created by digbio lab on 10/15/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController <UITextFieldDelegate>
- (IBAction)backgroundTap:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtReenter;
- (IBAction)submitClicked:(id)sender;
- (IBAction)cancelClicked:(id)sender;

@end
