//
//  RegisterViewController.m
//  SoyKB
//
//  Created by digbio lab on 10/15/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}
- (IBAction)submitClicked:(id)sender {
    if ([[self.txtUsername text] isEqualToString:@""] || [[self.txtPassword text] isEqualToString:@""] ||[[self.txtReenter text] isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Please Fill all the field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    if (![[self.txtPassword text] isEqualToString:[self.txtReenter text]]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"The two entered passwords are not match!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    // i will use a code from connect to DB tutorial
    NSString *strURL = [NSString stringWithFormat:@"http://babbage.cs.missouri.edu/~bx3g3/SoyKB/register.php?userName=%@&password=%@",[self.txtUsername text], [self.txtPassword text]];
    
    // to execute php code
    NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];
    
    // to receive the returend value
    NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
    if ([strResult isEqualToString:@"1"])
    {
        
        [self performSegueWithIdentifier:@"register_complete" sender:self];
    }else
    {
        // invalid information
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Username already exist!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return;
        
    }
    
}

- (IBAction)cancelClicked:(id)sender {
    [self performSegueWithIdentifier:@"register_complete" sender:self];
}
@end
