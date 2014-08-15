//
//  ViewController.m
//  Notifications
//
//  Created by Iván Mervich on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - IBActions

- (IBAction)changeColor:(id)sender
{
	[self.view endEditing:YES];
	[[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeColorNotification" object:[self.textField.text lowercaseString]];
}

@end
